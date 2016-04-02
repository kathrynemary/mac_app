class HomeController < ApplicationController
  def index
    if current_user
      redirect_to volunteers_path
    end
  end
end
