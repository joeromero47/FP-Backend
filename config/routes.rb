Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new, :show, :index]
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :posts, :comments
end
