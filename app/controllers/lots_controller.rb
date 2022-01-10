class LotsController < ApplicationController
  before_action :set_lot, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @q = Lot.ransack(params[:q])
    @lots = @q.result(distinct: true).order(created_at: :desc).page(params[:page]).per(12)
    @categories = Category.all
    @category_groups = CategoryGroup.all
    @bid = Bid.all
    @bids = Bid.all

    respond_to do |format|
      format.html
      format.csv { send_data @lots.to_csv, filename: "lots-#{Time.zone.now.to_s(:number)}.csv" }
    end
  end

  def new
    @lot = current_user.lots.build
    @categories = Category.all
    @category_groups = CategoryGroup.all
  end

  def create
    @categories = Category.all
    @category_groups = CategoryGroup.all
    @lot = current_user.lots.build(lot_params)
    authorize @lot
    if @lot.save
      redirect_to @lot, notice: 'Lot was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @lot = Lot.find(params[:id])
    @lot.id = params[:id]
    @categories = Category.all
    @category_groups = CategoryGroup.all
    @bid = @lot.bids.build
  end

  def edit
    @lot = Lot.find(params[:id])
    authorize @lot
    @categories = Category.all
    @category_groups = CategoryGroup.all
    @bid = @lot.bids.destroy_all
  end

  def update
    @lot = Lot.find(params[:id])
    authorize @lot
    @categories = Category.all
    if @lot.update(lot_params)
      redirect_to @lot, notice: 'Lot was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @lot
    @lot.destroy
    redirect_to lots_path
  end

  def set_lot
    @lot = Lot.find(params[:id])
  end

  def lot_params
    params.require(:lot).permit(:name, :description, :start_price, :fast_buy_price, :end_date, :user_id,
                                :category_id, images: [])
  end
  private :lot_params, :set_lot
end
