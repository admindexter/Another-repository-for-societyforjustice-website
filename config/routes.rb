ActionController::Routing::Routes.draw do |map|
  map.resources :presses, :articles, :galleries, :events, :guestbooks, :sessions, :accounts, :dorm_accounts

  map.home '', :controller => 'site', :action => 'index'

  map.about 'about', :controller => 'site', :action => 'about'

  map.contact 'contact', :controller => 'site', :action => 'contact'

  map.staff 'staff', :controller => 'site', :action => 'staff'

  map.donate 'donate', :controller => 'guestbooks', :action => 'donate'

  map.login 'login', :controller => 'sessions', :action => 'new'

  map.logout 'logout', :controller => 'sessions', :action => 'destroy'

  map.connect ':controller/:action/:id'

  map.connect ':controller/:action/:id.:format'
end

