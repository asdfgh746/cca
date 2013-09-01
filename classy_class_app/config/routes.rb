ClassyClassApp::Application.routes.draw do
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
  
  resources :users
  resources :schedules
  resources :sessions, only: [:new, :create, :destroy]

  resources :classy_classes
  resources :days
  resources :schedules
  resources :events
  resources :schools

  root :to => 'static_pages#home'

  match '/sign_out', to: 'sessions#destroy',     via: :delete

  match '/add_classes', to: 'classy_classes#new', via: 'get'
  match '/add_schedule', to: 'schedules#new', via: 'get'
  match '/my_schedule', to: 'schedules#show', via: 'get'

  match '/my_events', to: 'events#index', via: 'get'
  match '/add_events', to: 'events#new', via: 'get'
  match '/show_event/:id', to: 'events#show', as: :show_event

  match '/edit_days', to: 'days#edit', via: 'get'

  match '/set_school', to: 'schools#index', via: 'get'

  match '/set_schedule_with_school', to: 'schools#set_schedule_with_school', as: :set_schedule_with_school
  match 'add_schools', to: 'schools#new', via: 'get'

  match '/add_days/:id', to: 'days#new', as: :add_days

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
