Rails.application.routes.draw do
  resources :listings
  resources :searches

  root to: "home#index"
end
