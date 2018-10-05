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
    @budget_gaming_build = GamingBuild.find_by(price_category: 'budget')
  end

  def media
  end

  def workstation
  end

  def general
  end

end
