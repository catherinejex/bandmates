Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'posts#index', as: :authenticated_root
  end
  root to: 'pages#landing_page'
  resources :posts, only: [:index, :create, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
    resources :chatrooms, only: [:create, :index]
    resources :favourites, only: [:create]
  end
  resources :favourites, only: [:index, :destroy]
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
