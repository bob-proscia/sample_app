SampleApp::Application.routes.draw do
  resources :users

  root :to => 'pages#home'

  match '/signup',  :to => 'users#new'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/canvas',  :to => 'pages#canvas'

# Remove previously defined routes 3.17:
#  get "pages/home"
#  get "pages/contact"
#  get "pages/about"
#  get "pages/help"

# Setting up the routes using the new method: 5.18 


# NOTE:
# This automtaically creates named routes:
# What isn’t obvious is that match ’/about’ also automatically creates named routes for use in the controllers and views:
# about_path => '/about'
# about_url  => 'http://localhost:3000/about'
##############################################

# Another way to server up static pages that can have layout processing:
# from a blog by Josh Susser: http://blog.hasmanythrough.com/2008/4/2/simple-pages

# FAILS cause of : undefined local variable or method `map' for #<ActionDispatch::Routing::Mapper:0x52f3848>
# Rails.root: C:/Users/Bob/rails_projects/sample_app
# Application Trace | Framework Trace | Full Trace
# config/routes.rb:14:in `block in <top (required)>'
# config/routes.rb:1:in `<top (required)>'

#   map.root :controller => 'home'
#   map.home ':page', :controller => 'home', :action => 'show', :page => /myAbout|myContact/
# --------------------------------

# FAILS:  map.home ':action', :controller => 'home', :action => /myAbout|myContact/

# Works but need to still define the specific routes:
#  get "home/myContact"
#  get "home/myAbout"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

