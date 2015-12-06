Rails.application.routes.draw do

  #
  # Angular site
  #
  get "articles", to: 'home#index'
  get "about_us", to: 'home#index'
  get "ritual_venki", to: 'home#index'
  get "ritual_korsinu", to: 'home#index'
  get "may_9", to: 'home#index'
  get "novinki", to: 'home#index'
  get "buy", to: 'home#index'
  get "calc", to: 'home#index'
  get "goods", to: 'home#index'
  get "order", to: 'home#index'
  get "send-order", to: 'home#index'
  get "order-sent", to: 'home#index'
  get "admin/pages", to: 'home#index'
  get 'page/:page_name', to: 'home#index'
  get 'store/:goods_type', to: 'home#index'
  root 'home#index'

  #
  # Api for angular site
  #
  get  'api/products', :controller => 'products_rest', :action => 'all_products'
  get  'api/products/:id', :controller => 'products_rest', :action => 'get_product_by_id'
  get  'api/secret', :controller => 'products_rest', :action => 'secret'
  get  'api/pages', :controller => 'pages_rest', :action => 'get_all_pages'
  get  'api/pages/:ref', :controller => 'pages_rest', :action => 'get_page_by_ref'
  put  'api/pages/:ref', :controller => 'pages_rest', :action => 'update_page'
  get  'api/login', :controller => 'sessions_rest', :action => 'is_log_in'
  post 'api/login', :controller => 'sessions_rest', :action => 'log_in'
  post 'api/logout', :controller => 'sessions_rest', :action => 'log_out'
  post 'api/orders', :controller => 'orders_rest', :action => 'send_order'

  #
  # Html site
  #
  get 'html/', :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us'
  get 'html/about_us', :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us'
  get 'html/articles', :controller => "pages", :action => "show_by_page_ref", :page_ref => 'articles'
  get 'html/page/:page_ref', :controller => "pages", :action => "show_by_page_ref"

  get 'html/ritual_venki', :controller => "store", :action => "show_venki"
  get 'html/ritual_korsinu', :controller => "store", :action => "show_korsinu"
  get 'html/may_9', :controller => "store", :action => "show_may_9"
  get 'html/novinki', :controller => "store", :action => "show_novinki"
  get 'html/goods', :controller => "store", :action => "show_goods"


end
