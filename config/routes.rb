Rails.application.routes.draw do
  resource :products
  get 'pages/home'
  root to: 'pages#home'
end
