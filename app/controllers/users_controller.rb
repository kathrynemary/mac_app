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
    
    @address = current_user.address
    update_or_create_address

    redirect_to home_portal_path
  end

  private

  def address_params
    params.require(:user).require(:address).permit(:street_address_1, :street_address_2, :city, :state, :zip_code)
  end

  def address_present?
    params["user"]["address"].values.any? {|v| !v.blank? }
  end

  def update_or_create_address
    if @address && address_present?
      @address.update_attributes(address_params)
    elsif address_present?
      @address = Address.create(address_params)
    end
  end

  def load_user
    @user = current_user
  end

  def load_user_data
    @user_data = UserPresenter.data_for(current_user).call
  end

end
