class ShopsController < ApplicationController

  def show
    @shop = Shop.find_by(id: params[:id])
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
A`
  private

    def shop_params
      params.require(:shop).permit(:name, :email, :password, :password_confirmation)
    end
end
