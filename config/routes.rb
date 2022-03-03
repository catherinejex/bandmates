Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :posts, only: [:index, :create, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
    resources :favourites, only: [:create]
  end
  resources :favourites, only: [:index, :destroy]
end
