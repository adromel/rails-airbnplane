Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "pages#home"

  patch '/bookings/:id', to: 'bookings#update', as: 'update_booking'

  # vue de la recherche user
  resources :airports do
    resources :aircrafts
  end

  # vue owner de ses avions
  resources :users do
    resources :bookings
    resources :aircrafts do
      resources :bookings
    end
  end

  resources :aircrafts do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit] do
    patch :accept, on: :member
    patch :decline, on: :member
  end
  
  get 'search', to: 'airports#search'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'test', to: 'pages#test'

end
