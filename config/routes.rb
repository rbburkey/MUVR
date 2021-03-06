Rails.application.routes.draw do
  resources :reviews
  root 'static#welcome'

  get '/welcome' => 'static#welcome'
  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get '/howitworks' => 'static#howitworks'

  get 'movers/mover_apps'
  get 'users/user_apps'
  get 'movers/jobs_area'
  resources :charges

  get '/jobs/map' => 'jobs#map'

  resources :jobs do
    resources :jobapps, shallow: true
  end
resources :messages, only: [:new, :create]
# for messaging

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end


  devise_for :movers, :controllers => { registrations: 'registrations' }
  get 'movers/portal' => 'movers#portal', :as => "movers_portal"
  get 'movers/:id' => 'movers#profile', :as  => "mover_prof"
  get 'all_movers' => "movers#all_movers"
  get 'organizers' => "movers#organizers"


  devise_for :users, :controllers => { registrations: "user/registrations" }
  get '/users/portal' => 'users#portal', :as => "users_portal"
  get '/users/:id' => 'users#profile', :as  => "user_prof"
  get 'all_users' => "users#all_users"


  resources :charges
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
