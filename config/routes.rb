Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  resources :users, only: [:index]
  post 'login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
