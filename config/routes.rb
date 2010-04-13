Pizzaria::Application.routes.draw do |map|
  resources :products

  devise_for :users

  root :to => "products#index"
end
