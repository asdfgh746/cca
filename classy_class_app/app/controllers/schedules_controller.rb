class SchedulesController < ApplicationController
	def show
	end

	def create
		@schedule = Schedule.new(params[:schedule])
		@schedule.belongs_to_user = current_user.id
		@schedule.save(validate: false)

		@counter = 1

		while @counter <= @schedule.number_of_days
			@day = Day.new
			@day.number = @counter
			@day.belongs_to_schedule = @schedule.id
			@day.save(validate: false)
			@counter += 1
		end

		flash[:success] = "Schedule created."
		render 'classy_classes/new'
	end
end
