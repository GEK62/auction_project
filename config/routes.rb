Rails.application.routes.draw do
  resources :category_groups
  resources :categories
  root 'home#index' 
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  devise_for :users
end
