Rails.application.routes.draw do
  root 'tests#index'
  resources :items
  resources :tests, only: [:index]
  resources :mains, only: [:index]
end
