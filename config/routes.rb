Rails.application.routes.draw do
  resources :searches

  root to: "home#index"
end
