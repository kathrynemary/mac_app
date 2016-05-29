class VolunteerLeadsController < ApplicationController
  
  def new
    @volunteer_lead = VolunteerLead.new
  end

  def create
    @volunteer_lead = VolunteerLead.create(params.require(:volunteer_lead)
                                  .permit(:first_name,
                                          :last_name,
                                          :email,
                                          :phone_number,
                                          :interested_in
                                          ))
    redirect_to volunteer_leads_path
  end

  def show
    @volunteer_lead
  end

end
