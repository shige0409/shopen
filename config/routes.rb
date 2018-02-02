Rails.application.routes.draw do
  root 'home#top' #=> root_path
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  #resources :users
end
