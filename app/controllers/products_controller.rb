class ProductsController < ApplicationController
  PER = 24
  # get => /shops/:shop_id/products
  def index
    @products = Product.search(params[:search]).page(params[:page]).per(PER)
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
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    if @product.update_attributes(product_params)
      flash[:success] = '商品情報を変更しました'
      redirect_to shop_path(@product.shop_id)
    else
      render 'edit'
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :detail, :price, :picture)
    end
end
