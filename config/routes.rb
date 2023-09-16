Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:edit,:show, :index]
  resources :books, only: [:new, :index, :show, :create, :destroy]
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
 root to: 'homes#top'
 get "home/about" =>'homes#about'
end