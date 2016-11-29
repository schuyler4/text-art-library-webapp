Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :art do
    member do
      patch :vote_up
      patch :vote_down
    end
  end

  root 'home#index'
end
