class OnCallTimesController < ApplicationController

  def index
    @articles = OnCallTime.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end

  
end

