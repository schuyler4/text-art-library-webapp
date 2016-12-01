Rails.application.routes.draw do
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :art do
    member do
      patch :vote_up
      patch :vote_down
    end

    resources :comments
  end


  get 'signup' => 'users#new'
  resources :users 

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
