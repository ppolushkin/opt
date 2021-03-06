# coding: utf-8

class StoreController < ApplicationController

  include StoreHelper

  skip_before_filter :authorize

  def show_venki
    show_products "В", params[:sort]
    render 'store/store', :layout => 'application_html'
  end

  def show_korsinu
    show_products "К", params[:sort]
    render 'store/store', :layout => 'application_html'
  end

  def show_goods
    show_products "И", params[:sort]
    render 'store/store', :layout => 'application_html'
  end

  def show_may_9
    @products = Product.where("may9 <> '0'").order("price desc")
    render 'store/store', :layout => 'application_html'
  end

  def show_novinki
    dt = Date.today - 6.months
    @products = Product.where("created_at > '#{dt}'").order("created_at desc")
    render 'store/store', :layout => 'application_html'
  end

  # GET html/product/:id
  def product_details
    @product = Product.find(params[:id])
    render 'store/product_details', :layout => 'application_html'
  end

  protect_from_forgery

  def show_products(key, sort)
    if sort == nil
      order = "price desc"
    else
      order = "created_at desc"
    end

    @products = Product.where("article like '#{key}%'").order(order)
  end

end
