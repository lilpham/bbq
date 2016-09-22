Rails.application.routes.draw do
  devise_for :users
  root 'users#home'

  resources :users, only: [:show]
  resources :barbecues, only: [ :index, :show, :new, :create ]
end
