class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_user, :load_user_data, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def show
  end

  def update
    current_user.update_attributes(
      params.require(:user)
            .permit(:first_name,
                    :last_name,
                    :email,
                    :phone_number))
    @address = @user.address
    if @address
      @address.update_attributes(
        params.require(:user_attributes)
              .require(:address_attributes)
              .permit(:street_address_1,
                      :street_address_2,
                      :city,
                      :state,
                      :zip_code)
      )
    end
    redirect_to user_path(current_user)
  end

  private

  def load_user
    @user = current_user
  end

  def load_user_data
    @user_data = UserPresenter.data_for(current_user).call
  end

end
