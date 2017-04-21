Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :except => [:index]
  resources :cuisines do
    resources :restaurants
  end

  resources :reservations, :except => [:index]
end
