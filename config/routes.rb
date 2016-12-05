Rails.application.routes.draw do
  root 'home#index'

  resources :art do
    member do
      patch :vote_up
      patch :vote_down
    end

    resources :comments
  end

  resources :animated_art do
    resources :slides
  end

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
