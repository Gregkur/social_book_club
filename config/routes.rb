Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:create, :edit, :destroy]
  end
end
