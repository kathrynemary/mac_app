class VolunteerPresenter < UserPresenter
  attr_reader :volunteer, :user, :address

  def initialize(user)
    @user = user
    @volunteer = user.volunteer
    @address = user.try(:address)
  end

  def call
    volunteer_data.merge!(base_data)
    make_titleized(volunteer_data)
    volunteer_data
  end

  def volunteer_data
    {
      gender: volunteer.gender,
      role: volunteer.capacity,
      on_call: volunteer.on_call,
    }
  end

end
