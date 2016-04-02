class VolunteersController < ApplicationController
  before_action :authenticate_user!

  def index
  	@volunteers = Volunteer.all
  end

  def new
  end

  def create
    # Create new address object
    @address = Address.new(params.require(:volunteer).permit(:street_address_1,
                                                             :street_address_2,
                                                             :city,
                                                             :state,
                                                             :zip_code))
    @address.save!

    # Create new user object
    @user = User.new(params.require(:volunteer).permit(:first_name,
    																							     :last_name,
                                                       :email,
                                                       :phone_number,
                                                       :password))
    @user.role = 'volunteer'
    @user.address_id = @address.id
    @user.save!

    # Create new volunteer object
    @volunteer = Volunteer.new(params.require(:volunteer).permit(:gender,
                                                                 :on_call))
    # Column can't be named type unless following inheritance pattern, must be renamed.
    # @volunteer.type = params[:volunteer][:role]

    @volunteer.user_id = @user.id
    @volunteer.save!

    redirect_to @volunteer
  end


  def edit
  	@volunteer = Volunteer.find(params[:id])
  end

  def patch
  end

  def show
  	@volunteer = Volunteer.find(params[:id])
  end

  def destroy
  	@volunteer = Volunteer.find(params[:id])
  	@volunteer.destroy!

  	redirect_to volunteers_path
  end
end
