Consignapp::Application.routes.draw do
  resources :products do
    collection { post :import }
  end


  resources :customers


  devise_for :users

  authenticated :user do
    root :to => 'home#home'
  end
  root :to => "home#index"

  resources :setup
  resources :users
end