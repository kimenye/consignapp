Consignapp::Application.routes.draw do
  #devise_for :members

  #authenticated :user do
  #  root :to => 'home#home'
  #end
  root :to => "home#index"
  devise_for :users
  #resources :users
end