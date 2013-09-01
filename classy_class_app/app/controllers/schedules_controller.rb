class SchedulesController < ApplicationController

	def show
		@schedule = Schedule.where(belongs_to_user: current_user.id).first
	end

	def new
		@schedule = Schedule.new
	end

	def create
		@schedule = Schedule.new(params[:schedule])
		@schedule.belongs_to_user = current_user.id

		@counter = 1
		@alphabet = ("A".."Z").to_a

		if @schedule.save

			while @counter <= @schedule.number_of_days
				@day = Day.new
				@day.order_of_blocks = @alphabet[0..@schedule.number_of_blocks-1].join(",")
				@day.number = @counter
				@day.belongs_to_schedule = @schedule.id
				@day.save
				@counter += 1
			end

			flash[:success] = "Schedule created."
			redirect_to my_schedule_path
		else
			render 'new'
		end
	end
end
