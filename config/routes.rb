Rails.application.routes.draw do
   devise_for :users , path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :ports

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root 'pages#home'

end
