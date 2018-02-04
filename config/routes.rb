Rails.application.routes.draw do
  root 'home#top' #=> root_path
  get '/test', to: 'home#test'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/signup', to: 'shops#new'
  post '/signup', to: 'shops#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :shops, except: [:new, :create]
end
