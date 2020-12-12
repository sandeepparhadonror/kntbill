Rails.application.routes.draw do
  resources :customer_orders
  resources :customers
  resources :orders
  resources :products
  
  
  get 'home/index'
  root 'home#index'
end
