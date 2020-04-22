Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resource :products
  get 'pages/home'
  root to: 'pages#home'
end
