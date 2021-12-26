Rails.application.routes.draw do
  resources :lots
  root 'lots#index' # => http://localhost:3000/lots
  get 'home/about' # => http://localhost:3000/home/about
  get 'home/contact' # => http://localhost:3000/home/contact
  devise_for :users
end
