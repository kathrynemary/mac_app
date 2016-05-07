class VolunteerPresenter
  attr_reader :volunteer, :user, :address

  TITLEIZE_FIELDS = %i{
    first_name
    last_name
    full_name
    address_line_1
    address_line_2
    city
    full_address
    gender
    role
    on_call
  }

  def initialize(volunteer)
    # binding.pry
    @volunteer = volunteer
    @user = volunteer.try(:user)
    @address = user.try(:address)
  end

  def present
    volunteer_data.merge!(user_data) if user
    volunteer_data.merge!(address_data) if address
    make_titleized(volunteer_data)
    volunteer_data
  end

  def volunteer_data
    {
      gender: volunteer.gender,
      role: volunteer.type,
      on_call: volunteer.on_call,
    }
  end

  def user_data
    {
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      full_name: user.full_name,
    }
  end

  def address_data
    {
      address_line_1: address.street_address_1,
      address_line_2: address.street_address_2,
      city: address.city,
      state: address.state.try(:upcase),
      zip: address.zip_code,
      full_address: address.full_address,
    }
  end

  private

  def make_titleized(data)
    data.keys.each do |k|
      data[k].try(:titleize) if TITLEIZE_FIELDS.include? k
    end
  end

end
