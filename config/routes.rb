Rails.application.routes.draw do
  devise_for :users
  resources :ports 

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root 'pages#home'

end
