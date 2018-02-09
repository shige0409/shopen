class ShopsController < ApplicationController
  before_action :should_open_shop, only: %i[edit update]
  before_action :correct_shop, only: %i[edit update]
  PER = 24
  def index
    @shops = Shop.page(params[:page]).per(PER)
  end

  def show
    @shop = Shop.find_by(id: params[:id])
    @products = @shop.products
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      open @shop
      flash[:notice] = '営業を開始しました'
      redirect_to @shop
    else
      render 'new'
    end
  end

  def edit
    @shop = Shop.find params[:id]
  end

  def update
    @shop = Shop.find params[:id]
    if @shop.update_attributes(shop_params)
      flash[:success] = '改修が完了しました'
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy

  end

  private

  def shop_params
    params.require(:shop).permit(:name, :email, :profile, :password, :password_confirmation, :picture)
  end

  def should_open_shop
    unless opening?
      flash[:alert] = '営業を開始してください'
      redirect_to open_url
    end
  end

  def correct_shop
    @shop = Shop.find params[:id]
    redirect_to root_url unless current_shop? @shop
  end
end
