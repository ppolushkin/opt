# coding: utf-8

class ProductsRestController  < RestApplicationController

  include StoreHelper

  skip_before_filter :authorize, :only => [:all_products, :get_product_by_id]

  #GET api/products
  def all_products
    show_products(params[:goods_type])
  end

  #GET api/products/:id
  def get_product_by_id
    p = Product.find(params[:id])

    render json: {
        # :id => p.id,
        # :name => p.name,
        # :article => p.article,
        # :price => sprintf("%u", p.price),
        # :img => p.medium_img.url,
        # :bigImg => p.big_img.url,
        # :size => p.width.to_s + 'x' + p.height.to_s + ' см',
        :description => p.notes
    }
  end

  #GET api/secret
  def secret
    render json: {
               :message => 'you passed'
           },
           status: 200
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

    if (goods_type == 'may_9')
      all_products = Product.where("may9 <> '0'").order("price desc")
    end

    if (goods_type == 'novinki')
      dt = Date.today - 6.months
      all_products = Product.where("created_at > '#{dt}'").order("created_at desc")
    else
      all_products = Product.where("article like '#{key}%'").order("price desc")
    end

    formatted_products = Array.new
    all_products.each do |p|
      formatted_products << {
          :id => p.id,
          :name => p.name,
          :article => p.article,
          :price => sprintf("%u", p.price),
          :img => p.medium_img.url,
          :size => p.width.to_s + 'x' + p.height.to_s + ' см'
      }
    end

    render json: formatted_products
  end

end
