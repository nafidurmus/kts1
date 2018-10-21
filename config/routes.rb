Rails.application.routes.draw do
  resources :weights
  devise_for :users
  get 'homepage/index'
  get 'homepage/what'
  get 'homepage/body_type'
  get 'homepage/weekly'
  get 'homepage/monthly'
  root 'homepage#index'
end
