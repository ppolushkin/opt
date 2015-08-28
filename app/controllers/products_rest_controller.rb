# coding: utf-8

class ProductsRestController  < RestApplicationController

  include StoreHelper

  skip_before_filter :authorize, :only => [:all_products]

  #GET api/products
  def all_products
    show_products(params[:goods_type])
  end

  protect_from_forgery

  def show_products(goods_type)
    key = "В"
    if (goods_type == 'ritual_venki')
      key = "В"
    end
    if (goods_type == 'ritual_korsinu')
      key = "К"
    end
    if (goods_type == 'goods')
      key = "И"
    end

    all_products = Product.where("article like '#{key}%'").order("price desc")

    formatted_products = Array.new
    all_products.each do |p|
      formatted_products << {
          :id => p.id,
          :name => p.name,
          :article => p.article,
          :price => sprintf("%u р", p.price),
          :img => p.medium_img.url,
          :size => p.width.to_s + 'x' + p.height.to_s + ' см'
      }
    end

    render json: formatted_products
  end

end
