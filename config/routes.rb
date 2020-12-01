Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create, :edit, :update, :destroy]
  end
  resources :pages, only: [:show]
  resources :bookings, only: [:show, :update, :destroy]

  post '/bookclubs/:id', to: 'bookclubs#join', as: 'join'

  resources :bookclubs, only: [:new, :create, :show, :index] do
    resources :bookclub_threads, only: [:new, :create, :show, :edit, :update, :destroy] do
      resources :comments, only: [:new, :create, :show]
    end

  end
  resources :comments, only: [:destroy]
  get "/profile/:id", to: "pages#profile", as: :profile
end
