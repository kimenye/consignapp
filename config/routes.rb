Consignapp::Application.routes.draw do
  resources :involved_items
  resources :products do
    collection { post :import }
  end
  resources :setup
  resources :users
  resources :customers

  devise_for :users

  authenticated :user do
    root :to => 'home#home'
  end
  root :to => "home#index"
end