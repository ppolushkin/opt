# coding: utf-8

class OrdersRestController < RestApplicationController

  skip_before_filter :authorize, :only => [:send_order]

  # {
  #   orderInfo : {
  #       phone: "8(905) 212-40-75",
  #       name: "Ирина Эдуардовна",
  #       companyName : "Гробы и Кресты",
  #       orderComment: "Нужно скорее"
  #   },
  #   items : [
  #     {
  #         id: 34,
  #         amount: 2,
  #         comment: "Жесть"
  #     },
  #     {
  #         id: 31,
  #         amount: 1
  #     }
  #   ]
  # }


  #POST api/order
  def send_order

    req = JSON.parse(request.body.read.html_safe)

    email = req['orderInfo']['email']

    order_info = {
        :phone => req['orderInfo']['phone'],
        :name  => req['orderInfo']['name'],
        :email  => email,
        :companyName => req['orderInfo']['companyName'],
        :orderComment => req['orderInfo']['orderComment']
    }

    order_items = []
    total = 0
    req['items'].each do |item|

      product = Product.find(item['id'])
      product_price = sprintf("%uр.", product.price)
      product_name = product.name

      if (item['amount'] != nil) && (item['amount'] > 0)
        res_item = {
            :name => product_name,
            :amount => item['amount'],
            :price => product_price,
            :comment => item['comment']
        }
        order_items.push(res_item)
        total += product.price * item['amount']
      end

    end

    total_formatted = sprintf("%uр.", total)

    FeedbackMails.send_order_now(order_info, order_items, total_formatted, email).deliver

    render json: {
               :message => 'success'
           },
           status: 200
  end

end