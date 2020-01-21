Rails.application.routes.draw do
  

  root to: 'welcome#index'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  resources :payments
  resources :tentants
  resources :repairs
  resources :rental_properties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    

    # get ‘auth/:provider/callback’, to: ‘sessions#googleAuth’
    # get ‘auth/failure’, to: redirect(‘/’)

    
    
end
