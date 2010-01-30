ActionController::Routing::Routes.draw do |map|
  map.root :controller => "test", :action => "show", :id => "1"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
