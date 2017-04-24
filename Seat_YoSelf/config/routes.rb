Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'

  resources :users, :except => [:index]
  resources :cuisines
  resources :restaurants do
    resources :reservations, :except => [:index]
  end

  resources :sessions, only: [:new, :create, :destroy]
end
