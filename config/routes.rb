Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  resources :users, only: :show
  resources :foods, only: [:index, :new, :create, :show]
  resources :services, only: :index
  resources :informations, only: [:index, :new, :create]
end
