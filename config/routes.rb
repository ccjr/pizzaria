ActionController::Routing::Routes.draw do |map|
  map.resources :pizzas

  map.resources :users
  map.resource :session
  map.resource :cart

  map.add_to_cart '/cart/add', :controller => 'carts', :action => 'add'
  map.remove_from_cart '/cart/remove', :controller => 'carts', :action => 'remove'
  
  map.logout   '/logout', :controller => 'sessions', :action => 'destroy'
  map.login    '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup   '/signup', :controller => 'users', :action => 'new'
  
  map.root :controller => 'pages'
end
