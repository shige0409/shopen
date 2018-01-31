Rails.application.routes.draw do
  root 'home#top' #=> root_path
  get '/about', to: 'home#about'
  #resources :users
end
