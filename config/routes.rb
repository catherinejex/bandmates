Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#landing_page'
  resources :posts, only: [:index, :create, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
    resources :favourites, only: [:create]
    resources :chatrooms, only: :create
  end
  resources :favourites, only: [:index, :destroy]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
