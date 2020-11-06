Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'movies#index'

  resources :movies do
    resource :like, only: [:create]
  end

  resources :favorites, only: [:index]

  


  
end

