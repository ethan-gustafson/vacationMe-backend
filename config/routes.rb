Rails.application.routes.draw do
  resources :likes, only: [:index, :create, :update]
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create]
  post 'login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
