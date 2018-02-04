class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save

    else
      render 'new'
    end
  end

  private

    def shop_params
      params.require(:shop).permit(:name, :email, :password, :password_confirmation)
    end
end
