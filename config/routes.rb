Rails.application.routes.draw do
  # get 'organizations/index'

  # get 'organizations/show'

  # get 'organizations/new'

  # get 'organizations/edit'

  # get 'certifications/index'

  # get 'certifications/show'

  # get 'certifications/new'

  # get 'certifications/edit'

  get 'static_pages/home'

  get 'staff', to: 'static_pages#staff'

  get 'contact_us', to: 'static_pages#contact_us'

  get 'resource_library', to: 'static_pages#resource_library'

  get 'family_support_standards', to: 'static_pages#family_support_standards'

  get 'policy_and_planning', to: 'static_pages#policy_and_planning'

  get 'committees', to: 'static_pages#committees'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#home'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :categories do
    resources :trainings
  end

  resources :certifications

  resources :organizations


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
