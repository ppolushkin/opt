# coding: utf-8

class ProductsRestController  < ApplicationController

  include StoreHelper

  skip_before_filter :authorize

  #GET api/products
  def all_products
    all_products = Product.where("article like 'В%'").order("price desc")
    render json: all_products
  end

end
