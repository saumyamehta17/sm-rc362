SmRc362::Application.routes.draw do
  resources :orders
  root 'orders#index'
end
