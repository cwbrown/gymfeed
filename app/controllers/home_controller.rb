class HomeController < ApplicationController
  def index

    unless @today = Gymday.find_by(gym_date: Date.today)
      if @today = Gymday.last
        flash.now[:error] = "There is no workout recorded for today.  
                             Showing most recent recorded workout instead (#{@today.gym_date.to_s})."
      else
        @today = Gymday.new( gym_date: Date.today)
        flash.now[:error] = "There are no recorded workouts."  
      end 
    end
  end
end
