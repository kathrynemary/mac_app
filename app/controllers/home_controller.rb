class HomeController < ApplicationController
  def index
    if current_user
      redirect_to home_portal_path
    end
  end
end
