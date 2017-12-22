Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top' #=> root_path
 #get '/' => 'home#top'と同じ
  get '/about', to: 'home#about'

  get 'users/new', to: 'users#new'

  get 'users/show', to: 'users#show'

end
