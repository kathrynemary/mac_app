class OnCallTimesController < ApplicationController

  def index
    @call_times = OnCallTime.all
  end

  def new
  
  end  
end

