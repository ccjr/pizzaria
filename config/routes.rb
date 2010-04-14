Pizzaria::Application.routes.draw do |map|
  resources :products
  resources :orders
  
  resource :cart do
    get :checkout
    post :confirm
    resources :items 
  end
  
  devise_for :users, :controllers => { :sessions => "sessions" }

  root :to => "products#index"
end
