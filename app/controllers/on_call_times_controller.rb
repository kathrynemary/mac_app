class OnCallTimesController < ApplicationController

  def index
    @call_times = OnCallTime.all
    today = Date.today
    @beginning_of_month = Date.civil(today.year, today.month, 1)
    @end_of_month = Date.civil(today.year, today.month, -1)
  end

  def new
    @call_times = OnCallTime.new
  end 

  def create
    @call_time = OnCallTime.new(params[:call_times])

    if @call_times.save?
      render


  end 

  def destroy
    @call_time = OnCallTime.find(params[:id])
    @call_time.destroy

    redirect_to on_call_times_path
  end
end

