Rails.application.routes.draw do
  resources :weights
  devise_for :users
  get 'homepage/index'
  get 'homepage/what'
  get 'homepage/body_type'
  root 'homepage#index'
end
