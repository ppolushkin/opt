# coding: utf-8

module SearchHelper

  def get_phrase()
    if(params[:phrase].blank?)
      "Найти товар..."
    else
      params[:phrase]
    end
  end

end
