Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :index] do
  end
  resources :pages, only: [:show]

end
