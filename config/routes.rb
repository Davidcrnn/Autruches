Rails.application.routes.draw do
  get 'pictures1/destroy'

  get 'pictures/destroy'
  get '/mentions-legales' => 'pages#mention'

  devise_for :users
  root to: 'pages#home'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  resources :contacts, only: [:new, :create]
  resources :boutiques, only: [:index]
  resources :verreries
  resources :pictures, only: [:destroy]
  resources :tables
  resources :pictures1, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
