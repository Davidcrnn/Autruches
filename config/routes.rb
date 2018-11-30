Rails.application.routes.draw do
  get 'pictures/destroy'

  devise_for :users
  root to: 'pages#home'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  resources :boutiques, only: [:index]
  resources :verreries
  resources :pictures, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
