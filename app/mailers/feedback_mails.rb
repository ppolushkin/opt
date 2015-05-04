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
end
