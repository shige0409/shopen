module SessionsHelper
  def open(shop)
    session[:shop_id] = shop.id
  end

  def close
    session.delete(:shop_id)
    @current_shop = nil
  end

  def current_shop
    @current_shop ||= Shop.find_by(id: session[:shop_id])
  end

  def current_shop?(shop)
    shop == current_shop
  end

  def opening?
    !current_shop.nil?
  end
end
