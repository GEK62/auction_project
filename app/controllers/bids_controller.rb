class BidsController < ApplicationController
  before_action :set_bid, only: %i[show edit update destroy]

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @lot = Lot.find(params[:id])
    @bid = @lot.bids.build
  end

  def update
    @bid = Bids.find(params[:id])
    @lot = Lot.find(@bid.lot_id)

    @old_user = User.find(@bid.user_id)
    @old_user.budget += @item.price + @bid.amount

    @new_user = User.find(params[:bid][:user_id])
    @bid.user_id = @new_user.id
    @bid.amount = params[:bid][:amount]
    @new_user.budget -= @item.price + @bid.amount

    respond_to do |format|
      if @bid.save
        format.html { redirect_to @lot, notice: 'Your item has been updated.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def create
    @lot = Lot.find(params[:id])
    @bid = @lot.bids.new(bid_params)
    respond_to do |format|
      if @bid.save
        format.html { redirect_to @lot, notice: 'Your lot has been updated.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

  def set_bid
    @bid = Bid.find(params[:id])
  end

  def bid_params
    params[:bid][:user_id] = current_user.id

    params[:bid].permit(:amount, :user_id, :lot_id)
  end
end
