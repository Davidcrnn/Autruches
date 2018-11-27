Rails.application.routes.draw do
  get 'pictures/destroy'

  devise_for :users
  root to: 'pages#home'
  resources :boutiques
  resources :verreries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
