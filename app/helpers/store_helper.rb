# coding: utf-8

module StoreHelper

  COLUMNS_IN_TABLE = 3

  def show_extra_image_ref(product)
    if product.big_img.file
      "<a href=\""+product.big_img.url+"\">Фото без обработки&rarr;</a>"
    end
  end

  def print_buy_product(product)
    if (product.article.include? "В")
      "Купить венок \"" + product_full_name(product) + "\""
    else
      "Купить корзину \"" + product_full_name(product) + "\""
    end
  end

  def product_full_name(product)
    product.name + ' (' + product.article + ')'
  end

  def product_size(product)
    product.width.to_s + 'x' + product.height.to_s + " см"
  end

  def product_smart_notes(product)

    if (product.notes == nil)
      result = "Размер: " + product_size(product)
    else
      result = product.notes + "<br><br>Размер: " + product_size(product)
    end

    if (product.extra_image_name != nil)
      result = result + "<br>" + show_extra_image_ref(product)
    end

    result
  end

  def print_count_options(from, to, selected)
    result=""
    from.upto(to) do |i|
      if(i == selected)
        result+="<option selected>"+i.to_s+"</option>"
      else
        result+="<option>"+i.to_s+"</option>"
      end
    end
    result
  end

  private


end
