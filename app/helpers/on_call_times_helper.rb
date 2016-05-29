module OnCallTimesHelper

  def available_on_call_volunteers
    if current_user.organizer
      User.order(:first_name)
    else
      [current_user]
    end
  end

end
