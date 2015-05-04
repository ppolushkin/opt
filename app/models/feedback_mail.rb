# coding: utf-8

#Full access shared  model
class FeedbackMail < ActiveRecord::Base

  validates :email, :format => {
      :with => /.+/,
      :message => "Ваш почтовый ящик не указан "
  }

  validates_email_format_of :email, :message => 'Укажите почтовый адрес (свой email)'
  # validates :email, :email => true

  validates :name, :format => {
      :with => /.+/,
      :message => "Ваше имя не указано "
  }

  validates :message, :format => {
      :with => /.+/,
      :message => "Сообщение пустое"
  }

  validates :application_name, :presence => true

  before_create :setup_application_name
  before_update :verify_application_name
  before_destroy :verify_application_name
  after_find :verify_application_name

  private

  def setup_application_name()
    self.application_name=APPLICATION_NAME
  end

  def verify_application_name()
    unless self.application_name == APPLICATION_NAME
      raise "Permission denied to message " + self.id
    end
  end

end
