Pizzaria::Application.routes.draw do |map|
  resources :products
  
  resource :cart do
    resources :items 
  end
  
  devise_for :users

  root :to => "products#index"
end
