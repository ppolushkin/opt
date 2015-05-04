# coding: utf-8

class Product < ActiveRecord::Base

  validates :article, :name, :small_img, :medium_img, :price, :presence => true
  validates :article, :uniqueness => true
  #Todo: remove repeats [ВКФ]\d+ from code if it's possible.
  validates :article, :format => {
      :with    => /[ВКФИ]\d+/,
      :message => "Артикль должен иметь формат В{номер} - для венка, К{номер} - для корзины или Ф{номер} - для фона, И{номер} - для изделия"
  }
  validates :article, :format => {
      :without => /(.+[ВКФИ]\d+)|([ВКФ]\d+\D+)/,
      :message => "Артикль должен иметь формат В{номер} - для венка, К{номер} - для корзины или Ф{номер} - для фона, И{номер} - для изделия"
  }
  validates_numericality_of :height, :width, :price, :greater_than => 0

  mount_uploader :small_img, FotoUploader
  mount_uploader :medium_img, FotoUploader
  mount_uploader :big_img, FotoUploader

  def type?(type)
    if(type == :venok)
      return article.force_encoding('UTF-8').include?("В")
    end
    if(type == :korsina)
      return article.force_encoding('UTF-8').include?("К")
    end
    false
  end

end
