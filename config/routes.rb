Rails.application.routes.draw do

  get 'password_reset/new'

  get 'password_reset/edit'

  root 'pages#home'
  get  '/help',       to: 'pages#help'
  get  '/about',      to: 'pages#about'
  get  '/contact',    to: 'pages#contact'
  
  get  '/signup',     to: 'users#new'
  post '/signup',     to: 'users#create'
  
  get  'add_product', to: 'products#new'
  post 'add_product', to: 'products#create'
  
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :products
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
end

