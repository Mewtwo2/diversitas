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

  def media
    if !logged_in?
      redirect_to root_path
    end
  end

  def workstation
  end

  def general
  end

end
