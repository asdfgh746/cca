class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create
		@classy = ClassyClass.create(params[:classy_class])

		flash[:success] = "Schedule updated!"
		redirect_to root_path
	end

end
