Rails.application.routes.draw do

  resources :post_comments

  get 'pages/perfiles'

  get 'pages/propuestas'

  get 'pages/media'

  get 'pages/recursos'

  get 'pages/blog'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories

  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'posts/index'
  
  get 'home/index'

    resources :posts
    resources :categories
    resources :admins

  get '/unite', :to => 'pages#unite'

  get '/perfiles', :to => 'pages#perfiles'

  get '/blog', :to => 'pages#blog'

  get '/propuestas', :to => 'pages#propuestas'

  get '/media', :to => 'pages#media'

  get '/recursos', :to => 'pages#recursos'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
