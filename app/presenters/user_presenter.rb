class UserPresenter

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

  def self.data_for(user)
    if user.organizer
      OrganizerPresenter.new(user)
    elsif user.volunteer
      VolunteerPresenter.new(user)
    else
      raise ArgumentError.new("Unexpected user type for #{user}")
    end
  end

  def base_data
    user_data.merge!(address_data)
  end

  def user_data
    {
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      full_name: user.full_name,
      phone_number: user.phone_number,
    }
  end

  def address_data
    return {} unless address
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
    data
  end

end
