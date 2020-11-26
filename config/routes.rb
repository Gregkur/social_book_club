Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create, :edit, :update, :destroy]
  end
  resources :pages, only: [:show]
  resources :bookings, only: [:show, :update, :destroy]
  resources :bookclubs, only: [:new, :create]
end
