Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top' #=> root_path

  get '/about', to: 'home#about'
end
