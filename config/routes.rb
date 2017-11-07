Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :artists
 get 'directory', to: 'pages#directory'

 get 'contact', to: 'pages#contact' 
  
  resources :albums
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pages#home'
end
