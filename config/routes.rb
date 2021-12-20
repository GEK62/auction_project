Rails.application.routes.draw do
  resources :category_groups
  resources :categories
  root 'home#index' 
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'lot/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
