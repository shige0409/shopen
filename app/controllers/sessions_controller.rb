class SessionsController < ApplicationController
  def new
  end

  def create
    shop = Shop.find_by(email: params[:session][:email].downcase)
    if shop && shop.authenticate(params[:session][:password])
      open shop
      flash[:success] = '営業を再開しました'
      redirect_to shop
    else
      flash.now[:alert] = 'メールアドレスかパスワードが間違っています'
      render 'new'
    end
  end

  def destroy
    close
    flash[:success] = '営業を終了しました'
    redirect_to root_url
  end
end
