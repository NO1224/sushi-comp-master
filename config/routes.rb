Rails.application.routes.draw do
  get 'maps/top' => 'maps#top'
  get 'ranks/index' => 'ranks#index'
  root to: 'homes#index'
  devise_for :users
  resources :users, only: :show
  resources :foods, only: [:index, :new, :create, :show] do
    resources :inseasons, only: [:create]
    resources :comments, only: [:index, :new, :create]
  end
  resources :services, only: :index
  resources :informations, only: [:index, :new, :create]
end
