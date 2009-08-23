ActionController::Routing::Routes.draw do |map|
  map.resources :pizzas

  map.resources :users
  map.resource :session

  map.logout   '/logout', :controller => 'sessions', :action => 'destroy'
  map.login    '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup   '/signup', :controller => 'users', :action => 'new'
  
  map.root :controller => 'pages'
end
