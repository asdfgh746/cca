class SchoolsController < ApplicationController
	def index
		@schools = School.all
		@schools_for_form ||= []

		School.all.each do |school|
			@schools_for_form << school.name
		end

		@user = current_user
	end

	def set_schedule_with_school
		@school = School.find_by_id(current_user.belongs_to_school)

		@schedule = Schedule.new
		@schedule.belongs_to_user = current_user.id
		@schedule.number_of_days = @school.number_of_days
		@schedule.number_of_blocks = @school.number_of_periods

		@counter = 0
		@alphabet = ("A".."Z").to_a

		if @schedule.save
			@school_days = Day.where(belongs_to_school: @school.id)

			while @counter <= @school_days.count - 1
				@day = Day.new
				@day.order_of_blocks = @school_days[@counter].order_of_blocks
				@day.number = @counter + 1
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
