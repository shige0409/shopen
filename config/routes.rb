Rails.application.routes.draw do
  root 'home#top' #=> root_path
  get '/test', to: 'home#test'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/start', to: 'shops#new'
  post '/start', to: 'shops#create'
  delete 'close', to: 'shops#destroy'
  get '/open', to: 'sessions#new'
  post '/open', to: 'sessions#create'
  get '/close', to: 'sessions#destroy'
  resources :shops
  resources :products
  #resources :shops, except: %i[new create destroy] do
    #resources :products, shallow: true
  #end
end
