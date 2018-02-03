Rails.application.routes.draw do
  get 'shops/new'

  root 'home#top' #=> root_path
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/test', to: 'home#test'
  #resources :users
  #resources :shops do
    #resources :products
  # end
end
