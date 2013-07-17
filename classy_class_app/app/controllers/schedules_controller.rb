class SchedulesController < ApplicationController
	def show
	end

	def create
		@schedule = Schedule.new(params[:schedule])
		@schedule.belongs_to_user = current_user.id
		@schedule.save(validate: false)

		flash[:success] = "Schedule created"
		redirect_to :back
	end
end
