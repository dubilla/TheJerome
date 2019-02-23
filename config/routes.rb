Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :entries, only: [:show, :edit, :update]
end
