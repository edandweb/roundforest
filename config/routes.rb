Rails.application.routes.draw do
  get 'categories/index'
  get 'products/index'

  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'categories#index'
end
