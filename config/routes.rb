Rails.application.routes.draw do
  resources :quotes
  resources :thirukurals
  get 'sitemap/index'

  get 'admission/ug'

  get 'admission/pg'

  get 'admission/ugprocedure'

  get 'admission/nri'

  get 'admission/nriprocedure'

  get 'admission/pgprocedure'

  get 'campuslife/services'

  get 'campuslife/facilities'

  get 'campuslife/festivals'

  get 'campuslife/clubs'

  get 'campuslife/societies'

  get 'campuslife/sports'

  get 'campuslife/isrp'

  get 'campuslife/hnd'

  get 'research/adminstration'

  get 'research/centres'

  get 'research/irt'

  get 'research/library'

  get 'research/doing'

  get 'contact/details'

  get 'contact/team'

  get 'scholar/list'

  resources :galleries
  get 'about/mission'

  get 'about/profile'

  get 'about/history'

  get 'about/board'

  get 'acadamics/dept'

  get 'acadamics/course'

  get 'acadamics/curr'

  resources :dept_faculs
  resources :faculties
  resources :studentnews
  resources :staffnews
  resources :researches
  resources :clubs
  resources :departments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :articles
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
