class PagesController < ApplicationController
  
  def index
    if logged_in?
      @user = current_user
    end
  end

  def gaming
  end

  def media
    if !logged_in? || current_user.is_donor != true
      redirect_to root_path
    end
  end

  def workstation
  end

  def general
  end

end
