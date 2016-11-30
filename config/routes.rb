Rails.application.routes.draw do
  root 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :art do
    member do
      patch :vote_up
      patch :vote_down
    end
  end

  get 'signup' => 'users#new'
  resources :users
end
