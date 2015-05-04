# coding: utf-8

class SearchController < ApplicationController

  skip_before_filter :authorize, :only => [:search]

  def search
    search_phrase = params[:phrase].to_s
    @phrase = Unicode.upcase(search_phrase)

    if (search_phrase.blank?)
      conditions = "article = ''"
    else
      conditions = "article like '%#{@phrase}%' or name like '%#{Unicode.capitalize(search_phrase)}%'"
    end

    @products = Product.paginate :page=>params[:page], :per_page => 12, :conditions => conditions, :order => "price desc"
  end

end
