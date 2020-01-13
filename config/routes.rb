Rails.application.routes.draw do
  
  resources :payments
  resources :tentants
  resources :repairs
  resources :rental_properties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    root to: 'welcome#index'

    # get ‘auth/:provider/callback’, to: ‘sessions#googleAuth’
    # get ‘auth/failure’, to: redirect(‘/’)

    devise_for :users
end
