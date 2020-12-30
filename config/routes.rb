Rails.application.routes.draw do
  
  resources :customer_orders
  resources :customers
  resources :products
  resources :orders


  # resources :customer_orders_reports, only: :index do
  #   match 'index' => 'customer_orders_reports#index', 
  #   on: :collection, via: [:get, :post]
  # end

  resources :customer_orders_reports do
    collection do
      match 'search' => 'customer_orders_reports#search', via: [:get, :post], as: :search
    end
  end

  get 'home/index'
  root 'home#index'
end
