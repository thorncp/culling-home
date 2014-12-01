Rails.application.routes.draw do
  resources :listings, only: [:index, :update]
  resources :searches
  resources :settings, only: [:index, :edit, :update]

  root to: redirect("/listings")
end
