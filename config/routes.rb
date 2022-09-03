Rails.application.routes.draw do
  get 'maps/top' => 'maps#top'
  root to: 'homes#index'
  devise_for :users
  resources :users, only: :show
  resources :foods, only: [:index, :new, :create, :show] do
    resources :comments, only: [:index, :new, :create]
  end
  resources :services, only: :index
  resources :informations, only: [:index, :new, :create]
end
