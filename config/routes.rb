Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "pages#home"

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

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
