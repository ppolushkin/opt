Rails.application.routes.draw do

  class ForRobot
    def matches?(request)
      request.GET.has_key?('_escaped_fragment_')
    end
  end

  #
  # HTML site that bot see then look at angular site
  # https://yandex.ru/support/webmaster/robot-workings/ajax-indexing.xml
  #
  get '/', :constraints => ForRobot.new, :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us'
  get '/about_us', :constraints => ForRobot.new, :controller => "pages", :action => "show_by_page_ref", :page_ref => 'about_us'
  get '/articles', :constraints => ForRobot.new, :controller => "pages", :action => "show_by_page_ref", :page_ref => 'articles'
  get '/page/:page_ref', :constraints => ForRobot.new, :controller => "pages", :action => "show_by_page_ref"

  get "ritual_venki", :constraints => ForRobot.new, :controller => "store", :action => "show_venki"
  get "ritual_korsinu", :constraints => ForRobot.new, :controller => "store", :action => "show_korsinu"
  get "may_9", :constraints => ForRobot.new, :controller => "store", :action => "show_may_9"
  get "novinki", :constraints => ForRobot.new, :controller => "store", :action => "show_novinki"
  get "goods", :constraints => ForRobot.new, :controller => "store", :action => "show_goods"
  get "product/:id", :constraints => ForRobot.new, :controller => "store", :action => "product_details"

  #
  # Angular site
  #
  get "articles", to: 'home#index'
  get "about_us", to: 'home#index'
  get "ritual_venki", to: 'home#index'
  get "ritual_korsinu", to: 'home#index'
  get "may_9", to: 'home#index'
  get "novinki", to: 'home#index'
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
  get 'api/products', :controller => 'products_rest', :action => 'all_products'
  get 'api/products/:id', :controller => 'products_rest', :action => 'get_product_by_id'
  get 'api/secret', :controller => 'products_rest', :action => 'secret'
  get 'api/pages', :controller => 'pages_rest', :action => 'get_all_pages'
  get 'api/pages/:ref', :controller => 'pages_rest', :action => 'get_page_by_ref'
  put 'api/pages/:ref', :controller => 'pages_rest', :action => 'update_page'
  get 'api/login', :controller => 'sessions_rest', :action => 'is_log_in'
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
  get 'html/product/:id', :controller => "store", :action => "product_details"


end
