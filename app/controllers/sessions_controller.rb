class SessionsController < ApplicationController
  def new
  end

  def create
    @shop = Shop.find_by(email: params[:session][:email].downcase)
    if @shop && @shop.authenticate(params[:session][:password])
      flash[:success] = '無事営業開始です！'
      redirect_to @shop
    else
      flash.now[:alert] = 'メールアドレスかパスワードが間違っています'
      render 'new'
    end
  end
end
