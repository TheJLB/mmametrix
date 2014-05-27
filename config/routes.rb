MMAMetrix::Application.routes.draw do

  resources :judges
  resources :referees
  resources :fighters
  resources :events
  devise_for :users
   
  root 'pages#index'

  get "donate"            => "pages#donate"
  get "help"              => "pages#help"
  get "contact"           => "pages#contact"
  get "about"             => "pages#about"
  get "fighters"          => "fighters#list"
  get "referees"          => "referees#list"
  get "judges"            => "judges#list"
  get "events"            => "events#list"
  get "completed_events"  => "events#completed_events"
  get "upcoming_events"   => "events#upcoming_events"
  get "admin"             => "pages#admin"

  get "referees/new"
  get "referees/edit"
  get "referees/show"
  get "referees/list"
  get "pages/index"
  get "events/list"
  get "events/show"
  get "events/edit"
  get "events/new"
  get "judges/list"
  get "judges/show"
  get "judges/edit"
  get "judges/new"
  get "fighters/list"
  get "fighters/show"
  get "fighters/edit"
  get "fighters/new"
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
