Rails.application.routes.draw do
  resources :strips
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
