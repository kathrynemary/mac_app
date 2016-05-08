class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
  end

  def show
  end

  def update
    current_user.update_attributes(params.require(:user)
                                  .permit(:first_name,
                                          :last_name,
                                          :email,
                                          :phone_number))
    redirect_to user_path(current_user)
  end

end
