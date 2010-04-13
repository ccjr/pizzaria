Pizzaria::Application.routes.draw do |map|
  resources :products
  
  match 'cart/' => 'carts#show'
  match 'cart/add/:id' => 'carts#add', :as => "add_to_cart"
  match 'cart/remove/:id' => 'carts#remove', :as => "remove_from_cart"

  #  resource :cart do
  #    member do
  #      post :add
  #      post :remove
  #    end
  #    collection do
  #      get :show
  #    end
  #  end
  
  devise_for :users

  root :to => "products#index"
end
