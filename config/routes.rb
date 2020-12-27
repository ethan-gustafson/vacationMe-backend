Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :update, :destroy]
  resources :likes, only: [:index, :create, :update]
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
