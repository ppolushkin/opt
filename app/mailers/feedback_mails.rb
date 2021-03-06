# coding: utf-8

class FeedbackMails < ActionMailer::Base
  default :from => "sysadmin@venki-spb.ru"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback.send.subject
  #
  def send_mail_now(sender_mail, sender_name, sender_phone, msg)
    @sender_mail = sender_mail
    @sender_name = sender_name
    @sender_phone = sender_phone
    @feedback_msg = msg

    mail :to => ["sysadmin@venki-spb.ru", "pavel.polushkin@gmail.com", "a_10@bk.ru"], :subject => "VENKI-SPB.RU " + sender_name
  end

  def send_order_now(order_info, order_items, total_formatted, email)

    @order_info = order_info
    @order_items = order_items
    @order_time = Time.current
    @total_formatted = total_formatted

    to = ["a_10@bk.ru"]

    if email
      to.push(email)
    end

    mail :to => to, :subject => 'Заказ на ритуальный-венок.рф'

  end

end
