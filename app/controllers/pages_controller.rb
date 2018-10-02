class PagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
    end
  end

  def gaming
  end
end
