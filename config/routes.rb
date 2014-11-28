Rails.application.routes.draw do
  resources :listings
  resources :searches
  resources :settings

  root to: "home#index"
end
