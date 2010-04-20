Pizzaria::Application.routes.draw do |map|
  resources :products
  resources :orders
  
  resource :cart do
    get :checkout, :payment
    post :confirm, :process_payment
    resources :items 
  end
  
  devise_for :users, :controllers => { :sessions => "sessions" }

  root :to => "products#index"
end
