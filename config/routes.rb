Rails.application.routes.draw do
  resources :weights
  devise_for :users
  get 'homepage/index'
  get 'homepage/what'
  root 'homepage#index'
end
