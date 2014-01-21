SmRc362::Application.routes.draw do
  resources :orders
  post 'orders/import' => 'orders#import'
  root 'orders#index'
end
