class LotsController < ApplicationController
  before_action :set_lot, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destroy]

  def index
    @lots = Lot.all
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
    if @lot.save
      redirect_to lots_path
    else
      render :new
    end
  end

  def show
    @lot = Lot.find(params[:id])
    @categories = Category.all
    @category_groups = CategoryGroup.all
  end

  def edit
    @categories = Category.all
    @category_groups = CategoryGroup.all
  end

  def update
    @categories = Category.all
    if @lot.update(lot_params)
      redirect_to lots_path
    else
      render :edit
    end
  end

  def destroy
    @lot.destroy
    redirect_to lots_path
  end

  def correct_user
    @lot = current_user.lots.find_by(id: params[:id])
    redirect_to lots_path, notice: 'Not authorized to edit this lot' if @lot.nil?
  end

  def set_lot
    @lot = Lot.find(params[:id])
  end

  def lot_params
    params.require(:lot).permit(:name, :description, :start_price, :fast_buy_price, :end_date, :user_id,
                                :category_group_id, images: [])
  end
  private :lot_params, :set_lot
end
