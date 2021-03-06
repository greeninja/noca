Rails.application.routes.draw do

  root 'welcome#index'
 
  get 'welcome/index'

  get 'project/index'

  get 'project/show'

  get 'project/create'

  get 'project/edit'

  get 'project/closed'

  get 'wiki/index'

  get 'wiki/edit'

  get 'wiki/create'

  get 'wiki/show'

  get 'wiki/delete'

  get 'handover/index'

  get 'handover/show'

  get 'handover/create'

  get 'handover/edit'

  get 'handover/closed'

  get 'change/index'

  get 'change/show'

  get 'change/new'

  get 'change/edit'

  get 'incidents/closed', to: 'incidents#closed'
  get 'settings/edit', to: 'settings#edit'
  get 'settings/new_model', to: 'settings#new_model'
  get 'settings/show', to: 'settings#show'
  get 'settings/delete', to: 'settings#delete'
  post 'settings/:id', to: 'settings#update'
  post 'settings/:id/destroy', to: 'settings#destroy'
  # patch 'settings/update', to: 'settings#update'  
  # Default route added
#   match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]
  resources :incidents
  resources :settings

  # Because routes are matched in order:
  #
  match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
