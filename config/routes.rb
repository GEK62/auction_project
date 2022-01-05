Rails.application.routes.draw do
  devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: 'users/omniauth'}
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  resources :lots
  resource :password_reset, only: %i[new create edit update]
  root 'lots#index' # => http://localhost:3000/lots
  get 'home/about' # => http://localhost:3000/home/about
  get 'home/contact' # => http://localhost:3000/home/contact
  get 'omniauth/:provider' => 'omniauth#localized', as: :localized_omniauth
  devise_for :users, skip: :omniauth_callbacks
  end
end