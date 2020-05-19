Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

   get '/products' => 'products#index'
   get 'products/:id' => 'products#show'
  get 'pages/home'
  root to: 'pages#home'
end
