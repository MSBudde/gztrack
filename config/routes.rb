Rails.application.routes.draw do
  devise_for :users
  root 'home#shop'

  get 'shop', to: 'home#shop'
  
  get 'shop/2', to: 'home#newpage'
  
  get 'shop/3', to: 'home#thirdpage'
  
  get 'shop/4', to: 'home#lastpage'
  
  get 'nastya', to: 'nastya#shop'
  
  get 'nastya/2', to: 'nastya#newpage'
  
   get 'nastya/3', to: 'nastya#thirdpage'
   
   get 'nastya/4', to: 'nastya#lastpage'

   get 'fiomall', to: 'fiomall#shop'
  
   get 'fiomall/2', to: 'fiomall#newpage'
  
    get 'fiomall/3', to: 'fiomall#thirdpage'
   
       get 'fiomall/4', to: 'fiomall#lastpage'


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
