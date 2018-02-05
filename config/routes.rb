Rails.application.routes.draw do
  get 'sessions/new'

  root 'home#top' #=> root_path
  get '/test', to: 'home#test'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/start', to: 'shops#new'
  post '/start', to: 'shops#create'
  get '/open', to: 'sessions#new'
  post '/open', to: 'sessions#create'
  get '/close', to: 'sessions#destroy'
  resources :shops, except: [:new, :create]
end
