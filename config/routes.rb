Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  resources :lots
  root 'lots#index' # => http://localhost:3000/lots
  get 'home/about' # => http://localhost:3000/home/about
  get 'home/contact' # => http://localhost:3000/home/contact
  devise_for :users
  end
end