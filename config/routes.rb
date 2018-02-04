Rails.application.routes.draw do
  root 'home#top' #=> root_path
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  # get '/test', to: 'home#test'
  get '/signup', to: 'shops#new'
  post '/signup', to: 'shops#create'
  resources :shops, except: [:new, :create]
end
