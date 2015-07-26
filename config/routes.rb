Rails.application.routes.draw do
  resources :feedback_mails
  get "feedback", :controller => "feedback_mails", :action => "new", :as => "feedback"
  post "send_feedback", :controller => "feedback", :action => "send_feedback", :as =>"send_feedback"

  get "search", :controller => "search", :action => "search", :as=>"search"

  controller :sessions do
    get 'login' => :show_login_form, :as => 'login'
    get 'login_area' => :login_area
    post 'login' => :log_in
    delete 'logout' => :log_out
  end

  # get "ritual_venki", :controller => "store", :action => "show_venki", :as=>"venki"
  # get "ritual_korsinu", :controller => "store", :action => "show_korsinu", :as=>"korsinu"
  # get "may_9", :controller => "store", :action => "show_may_9", :as=>"may_9"
  # get "novinki", :controller => "store", :action => "show_novinki", :as=>"novinki"
  # get "buy", :controller => "store", :action => "buy", :as=>"buy"
  # get "calc", :controller => "store", :action => "calc", :as=>"calc"
  # get "goods", :controller => "store", :action => "show_goods", :as=>"goods"

  resources :pages

  # get ":page_ref", :controller => "pages", :action => "show_by_page_ref"

  # root :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us', :as => 'about_us'

  get "about_us", to: 'home#index'
  get "ritual_venki", to: 'home#index'
  get "ritual_korsinu", to: 'home#index'
  get "may_9", to: 'home#index'
  get "novinki", to: 'home#index'
  get "buy", to: 'home#index'
  get "calc", to: 'home#index'
  get "goods", to: 'home#index'

  get 'page/:page_name', to: 'home#index'
  get 'store/:goods_type', to: 'home#index'
  root 'home#index'

  get 'api/products', :controller => 'products_rest', :action => 'all_products'
  get 'api/revisions/last/:ref', :controller => 'revisions_rest', :action => 'last_by_ref'

end
