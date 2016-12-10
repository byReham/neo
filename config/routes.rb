Rails.application.routes.draw do

  root 'pages#home'
  get  '/help',       to: 'pages#help'
  get  '/about',      to: 'pages#about'
  get  '/contact',    to: 'pages#contact'
  
  get  '/signup',     to: 'users#new'
  post '/signup',     to: 'users#create'
  
  get 'products/new', to: 'products#new'
  
  resources :users
  resources :products
  
end

