Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'elson#home'
  resources :categories
  resources :products
  resources :variants
end
