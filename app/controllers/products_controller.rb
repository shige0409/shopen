class ProductsController < ApplicationController
  # get => /shops/:shop_id/products
  def index
  end

  # get => /products/:id
  def show
    @product = Product.find_by(id: params[:id])
  end


  def create
    @product = current_shop.products.build(product_params)
    if @product.save
      flash[:notice] = '出品しました'
      redirect_to current_shop
    else
      @shop = current_shop
      render 'shops/show'
    end
  end

  # get => /products/:id/edit
  def edit
  end

  private

    def product_params
      params.require(:product).permit(:name, :detail, :price, :picture)
    end
end
