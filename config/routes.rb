Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users, only: [:show]
  resources :entries, only: [:new, :show, :edit, :update, :create]
  resources :leaders, only: :index
end
