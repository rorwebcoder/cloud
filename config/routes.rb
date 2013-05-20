Cloudqwest::Application.routes.draw do
  # Routes for the Vendor resource:
  # CREATE
  get '/vendors/new', controller: 'vendors', action: 'new', as: 'new_vendor'
  post '/vendors', controller: 'vendors', action: 'create'

  # READ
  get '/vendors', controller: 'vendors', action: 'index', as: 'vendors'
  get '/vendors/:id', controller: 'vendors', action: 'show', as: 'vendor'

  # UPDATE
  get '/vendors/:id/edit', controller: 'vendors', action: 'edit', as: 'edit_vendor'
  put '/vendors/:id', controller: 'vendors', action: 'update'

  # DELETE
  delete '/vendors/:id', controller: 'vendors', action: 'destroy'
  #------------------------------

  # Routes for the Shipper resource:
  # CREATE
  get '/shippers/new', controller: 'shippers', action: 'new', as: 'new_shipper'
  post '/shippers', controller: 'shippers', action: 'create'

  # READ
  get '/shippers', controller: 'shippers', action: 'index', as: 'shippers'
  get '/shippers/:id', controller: 'shippers', action: 'show', as: 'shipper'

  # UPDATE
  get '/shippers/:id/edit', controller: 'shippers', action: 'edit', as: 'edit_shipper'
  put '/shippers/:id', controller: 'shippers', action: 'update'

  # DELETE
  delete '/shippers/:id', controller: 'shippers', action: 'destroy'
  #------------------------------

  # Routes for the Carrier resource:
  # CREATE
  get '/carriers/new', controller: 'carriers', action: 'new', as: 'new_carrier'
  post '/carriers', controller: 'carriers', action: 'create'

  # READ
  get '/carriers', controller: 'carriers', action: 'index', as: 'carriers'
  get '/carriers/:id', controller: 'carriers', action: 'show', as: 'carrier'

  # UPDATE
  get '/carriers/:id/edit', controller: 'carriers', action: 'edit', as: 'edit_carrier'
  put '/carriers/:id', controller: 'carriers', action: 'update'

  # DELETE
  delete '/carriers/:id', controller: 'carriers', action: 'destroy'
  #------------------------------

  resources :loads do
    resources :stops
  end

  # Routes for the Stop resource:
  # CREATE
  get '/loads/:load_id/stops/new', controller: 'stops', action: 'new'
  post '/loads/:load_id/stops', controller: 'stops', action: 'create'


  # READ
  get '/stops', controller: 'stops', action: 'index', as: 'stops'
  get '/stops/:id', controller: 'stops', action: 'show', as: 'stop'

  # UPDATE
  get '/stops/:id/edit', controller: 'stops', action: 'edit', as: 'edit_stop'
  put '/stops/:id', controller: 'stops', action: 'update'

  # DELETE
  delete '/stops/:id', controller: 'stops', action: 'destroy'
  #------------------------------

  # Routes for the Load resource:
  # CREATE
  get '/loads/new', controller: 'loads', action: 'new', as: 'new_load'
  post '/loads', controller: 'loads', action: 'create'

  # READ
  get '/loads', controller: 'loads', action: 'index', as: 'loads'
  get '/loads/:id', controller: 'loads', action: 'show', as: 'load'

  # UPDATE
  get '/loads/:id/edit', controller: 'loads', action: 'edit', as: 'edit_load'
  put '/loads/:id', controller: 'loads', action: 'update'

  # DELETE
  delete '/loads/:id', controller: 'loads', action: 'destroy'
  #------------------------------


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
