Rails.application.routes.draw do
  resources :products
  get '/bikes', to: 'bikes#index'
  root "products#index"
end
