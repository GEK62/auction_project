class LotController < ApplicationController
  before_action :set_lot, only: %i[show edit update destroy]

  def index
    @lots = Lot.all
  end

  def new
    @lot = Lot.new
    @categories = Category.all
    @category_groups = CategoryGroup.all
  end

  def create
    @lot = Lot.new(lot_params)
    if @lot.save
      redirect_to lots_path
    else
      render :new
    end
  end

  def set_lot
    @lot = Lot.find(params[:id])
  end

  def lot_params
    params.require(:lot).permit(:name, :description, :start_price, :fast_buy_price, :end_date, :user_id, :category_group_id, images: [])
  end
  private :lot_params, :set_lot
end