Rails.application.routes.draw do
  get 'contact' => 'static_pages#contact'
  match '/send_mail', to: 'static_pages#send_mail', via: 'post'
  devise_for :users
  resources :authors

  resources :articles, :except => [:index]

  resources :categories
  post 'search_country' => 'articles#search_country'
  get 'search_country' => 'articles#search_country' 
  root 'articles#index'
  get 'articles' => redirect('/')
  get 'about' => 'static_pages#about'
  get '/sitemap1.xml.gz' => 'sitemaps#show'
  # Example of regular route:
  devise_scope :user do
    get 'administration' => 'devise/sessions#new'
  end

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
