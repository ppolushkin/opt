# coding: utf-8

class ProductsRestController  < ApplicationController

  include StoreHelper

  skip_before_filter :authorize

  #GET api/products
  def all_products
    all_products = Product.where("article like 'В%'").order("price desc").first(25)

    formatted_products = Array.new
    all_products.each do |p|
      formatted_products << {
          :id => p.id,
          :name => p.name,
          :price => sprintf("%u р", p.price),
          :img => p.medium_img.url,
          :size => p.width.to_s + 'x' + p.height.to_s + ' см'
      }
    end

    render json: formatted_products
  end

end
