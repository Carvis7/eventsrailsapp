class DashboardController < ApplicationController
  before_action :authenticate_user!


  def index
    @events = Event.where(user_id: current_user.id)
    @attendances = Attendance.where(user_id: current_user.id)
  end


end
