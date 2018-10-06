Rails.application.routes.draw do
  root 'tests#index'
  resources :items, only: [:new]
  resources :tests, only: [:index]
  resources :mains, only: [:index]
end
