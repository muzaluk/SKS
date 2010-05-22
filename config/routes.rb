ActionController::Routing::Routes.draw do |map|
  map.resources :gadgets

  map.resources :players

  map.resources :news
  map.resources :terminarzs

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
   #map.connect 'terminarzs/:id', :controller => 'terminarzs', :action => 'edytuj'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "main_page"
  map.wszystkie '/showall', :controller => 'terminarzs', :action => 'index'
  map.edytuj '/edit', :controller => 'terminarzs', :action => 'edit'
  map.dodaj '/add_term', :controller => 'terminarzs', :action => 'new'
  map.usun '/delete', :controller => 'terminarzs', :action => 'usun'
  map.pokaz_wszystkie '/all', :controller => 'news', :action => 'index'
  map.new '/add_news', :controller => 'news', :action => 'new'
  map.edit '/edit', :controller => 'news', :action => 'edit'
  map.show '/show', :controller => 'news', :action => 'show'
  map.kontakt '/kontakt', :controller => 'main_page', :action => 'kontakt'
  map.media '/media', :controller => 'main_page', :action => 'media'
  map.about '/about', :controller => 'main_page', :action => 'oklubie'
  map.shop '/shop', :controller => 'main_page', :action => 'sklep'
  map.calendar '/calendar', :controller => 'main_page', :action => 'calendar'
  map.players_all '/players', :controller => 'players', :action => 'index'
  map.players_new '/add_player', :controller => 'players', :action => 'new'
  map.players_show '/show_players', :controller => 'main_page', :action => 'zawodnicy'
  map.gadgets_all '/gadgets', :controller => 'gadgets', :action => 'index'
  map.gadgets_new '/add_gadget', :controller => 'gadgets', :action => 'new'
  map.gadgets_show '/show_gadgets', :controller => 'main_page', :action => 'gadzety'
  map.css_source '/css_source', :controller => 'main_page', :action => 'css'
  map.html_source '/html_source', :controller => 'main_page', :action => 'html'
  map.js_source '/js_source', :controller => 'main_page', :action => 'js'
end
