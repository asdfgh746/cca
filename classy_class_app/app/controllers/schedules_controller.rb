class SchedulesController < ApplicationController
	def show
	end

	def create
		@schedule = Schedule.new(params[:schedule])
		@schedule.belongs_to_user = current_user.id
		@schedule.save(validate: false)

		@counter = 1
		@alphabet = [ "A","B","C","D","E","F","G","H","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z" ]

		while @counter <= @schedule.number_of_days
			@day = Day.new
<<<<<<< HEAD
			@day.order_of_blocks = @alphabet[0..@schedule.number_of_blocks-1].join(",")
=======
>>>>>>> c27820af4adb438eaa5bd54ad21447a7eb1c3eec
			@day.number = @counter
			@day.belongs_to_schedule = @schedule.id
			@day.save(validate: false)
			@counter += 1
		end

		flash[:success] = "Schedule created"
		render 'classy_classes/new'
	end
end
