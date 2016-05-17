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
    @start_time = Date.parse("#{params[:start_time]["start_time(3i)"]}-#{params[:start_time]["start_time(2i)"]}-#{params[:start_time]["start_time(1i)"]}") 
    @end_time = Date.parse("#{params[:end_time]["end_time(3i)"]}-#{params[:end_time]["end_time(2i)"]}-#{params[:end_time]["end_time(1i)"]}") 
    @call_time = OnCallTime.new(start_time: @start_time, end_time: @end_time, user_id: params[:on_call_time][:provider_id])
    if @call_time.valid?
      @call_time.save
      redirect_to on_call_times_path
    else
      flash[:notice] = @call_time.errors.full_messages
      @call_times = OnCallTime.all
      today = Date.today
      @beginning_of_month = Date.civil(today.year, today.month, 1)
      @end_of_month = Date.civil(today.year, today.month, -1)
      render "on_call_times/new"
    end
  end 

  def destroy
    @call_time = OnCallTime.find(params[:id])
    @call_time.destroy
    redirect_to on_call_times_path
  end
end

