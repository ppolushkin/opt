Rails.application.routes.draw do
  resources :feedback_mails
  get "feedback", :controller => "feedback_mails", :action => "new", :as => "feedback"
  post "send_feedback", :controller => "feedback", :action => "send_feedback", :as =>"send_feedback"

  get "search", :controller => "search", :action => "search", :as=>"search"

  controller :sessions do
    get 'login' => :show_login_form, :as => 'login'
    post 'login' => :log_in
    delete 'logout' => :log_out
  end

  get "ritual_venki", :controller => "store", :action => "show_venki", :as=>"venki"
  get "ritual_korsinu", :controller => "store", :action => "show_korsinu", :as=>"korsinu"
  get "may_9", :controller => "store", :action => "show_may_9", :as=>"may_9"
  get "novinki", :controller => "store", :action => "show_novinki", :as=>"novinki"
  get "buy", :controller => "store", :action => "buy", :as=>"buy"
  get "calc", :controller => "store", :action => "calc", :as=>"calc"
  get "goods", :controller => "store", :action => "show_goods", :as=>"goods"

  resources :pages

  get ":page_ref", :controller => "pages", :action => "show_by_page_ref"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us', :as => 'about_us'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'

end
