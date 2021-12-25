Rails.application.routes.draw do
  root 'home#index' 
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'lot/index', to: 'lot#index'
  get 'lot/new', to: 'lot#new'
  post 'lot/create', to: 'lot#create', as: 'lots'
  devise_for :users
end
