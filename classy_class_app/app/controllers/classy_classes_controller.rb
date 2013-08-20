class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create
		@classy = ClassyClass.new(params[:classy_class])
		@classy.save

		flash[:success] = "Schedule updated!"
		redirect_to my_schedule_path
	end

end
