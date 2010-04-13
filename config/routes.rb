Pizzaria::Application.routes.draw do |map|
  resources :products
  
  resource :cart do
    resources :items 
  end
  
  devise_for :users, :controllers => { :sessions => "sessions" }

  root :to => "products#index"
end
