module SessionsHelper
  def open(shop)
    session[:shop_id] = shop.id
  end

  def current_shop
    @current_shop ||= Shop.find_by(id: session[:shop_id])
  end

  def opening?
    !current_shop.nil?
  end
end
