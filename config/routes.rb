Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
		    authenticated :user do
		      root 'posts#main', as: :authenticated_root
		    end
		  
		    unauthenticated do
		      root 'devise/sessions#new', as: :unauthenticated_root
		    end
		end
  # matching	
	get 'match/matching' => "match#matching"
  # mypage 	
  get 'mypage/index' => 'mypage#index'

  # Apply
  get '/apply/apply_create' => 'apply#apply_create'
  post '/apply/apply_new' => 'apply#apply_new'
  get '/apply/apply_cancel/:id' => 'apply#apply_cancel'
  
  # Post
  resource :posts
  
  get '/posts/main' => "posts#main"
  get '/posts/index'
  get '/posts/show/:id' => 'posts#show' , as: 'show'
  get '/posts/edit/:id' => 'posts#edit'
  put '/posts/update/:id' => 'posts#update'
  delete '/posts/destroy/:id' => 'posts#destroy'
  
  # Comment
  post '/comments/create' => 'comments#create'
  delete '/comments/:post_id/destroy/:id' => 'comments#destroy'
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
