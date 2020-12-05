Rails.application.routes.draw do
  resources :customer_orders
  resources :customers
  resources :orders
  resources :products
  
  
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
