class BidsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :index]
  def new
  end

  def create
    @categories = Category.all
    @category_groups = CategoryGroup.all
    @lot = Lot.find(params[:bid][:lot_id])
    @bid = @lot.bids.build(bid_params)
    @bid.user = current_user
    if @bid.user.budget >= @bid.amount + @lot.start_price &&  @lot.fast_buy_price <= @bid.amount
      @bid.save
      redirect_to lot_path(@lot), notice: 'Bid was successfully created.'
    elsif @bid.user.budget < @bid.amount + @lot.start_price
      redirect_to lot_path(@lot), notice: 'You don\'t have enough money'
    elsif @bid.amount < @lot.start_price
      redirect_to lot_path(@lot), notice: 'Bid must be greater than start price'
    elsif @bid.amount == @lot.fast_buy_price
      @bid.update(lot_status: "sold")
      redirect_to lot_path(@lot), notice: 'You win auction and lot was closed'
    else
      redirect_to lot_path(@lot), notice: 'Something went wrong'
    end
  end

  def index
    @bids = current_user.bids
  end

  private

  def bid_params
    params.require(:bid).permit(:amount, :lot_id, :user_id)
  end

end
