class PagesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  require 'json'
  
  def index
    if logged_in?
      @user = current_user
    end
  end

  def gaming
  end
end
