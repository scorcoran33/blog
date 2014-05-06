Rails.application.routes.draw do
  
  get 'admin/restricted', as: 'restricted_page'

  get 'admin/page_one'

  get 'admin/page_two'

  get 'work/index', to: "work#index"
  get '/work', to: "work#index", as: 'work_page'

  get 'resume/index'
  get '/resume', to: "resume#index", as: 'resume_page'

  get 'news/index'
  get '/news', to: "news#index", as: 'news_page'

  get "/", to: "welcome#index" 
  root "welcome#index"


  get '/aboutme', to: "aboutme#index"
  get 'aboutme/index', to: "aboutme#index", as: 'aboutme_page'
  get 'aboutme/dogs', to: 'aboutme#dogs'

  get 'welcome/index', to: "welcome#index"
  get '/welcome', to: "welcome#index", as: 'welcome_page'
  
  get 'sitemap/index'
  get '/sitemap', to: "sitemap#index", as: 'sitemap_page'

  get 'gallery/index', to: "gallery#index"
  get '/gallery', to: "gallery#index", as: 'gallery_page'

  post '/shalom', to: 'welcome#shalom'

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
