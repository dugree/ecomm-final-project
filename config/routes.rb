Finalproject::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'products#index' 

  match 'products'        => 'products#index',    :as => 'search'
  match 'products/view_new' => 'products#view_new', :as => 'new_products', :via => :get
  match 'products/view_recently_updated' => 'products#view_recently_updated', :as => 'recently_updated_products', :via => :get

  match 'products/:id'    => 'products#show',     :as => 'product', :via => :get

  match 'subcategory/:id'  => 'subcategories#index', :as => 'subcategory', :via => :get
  match 'customer'   => 'customers#index',    :as => 'customers', :via => :get
  match 'customer'   => 'customers#create',   :as => 'customer_create', :via => :post

  match 'order/confirm'  => 'orders#index',      :as => 'order_create', :via => :get
  match 'order/confirm'  => 'orders#generate',   :as => 'order_generate', :via => :post      
  match 'order/:id'      => 'orders#add',         :as => 'order_add', :via => :get
  match 'order/new/:id'      => 'orders#buy',         :as => 'order_buy', :via => :get



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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
