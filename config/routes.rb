Pizzaria::Application.routes.draw do |map|
  resources :products
  
  resource :cart do
    get :checkout
    post :process
    resources :items 
  end
  
  devise_for :users, :controllers => { :sessions => "sessions" }

  root :to => "products#index"
end
