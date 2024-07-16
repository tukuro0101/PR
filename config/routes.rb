Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'cart_items/create'
  get 'cart_items/update'
  get 'cart_items/destroy'
  get 'carts/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/show'
  get 'categories/index'
  get 'categories/show'
  get 'products/index'
  get 'products/show'

  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :orders, only: [:new, :create, :show]
  resource :cart, only: [:show]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :addresses
  resources :reviews, only: [:create]




end
