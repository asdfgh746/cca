class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create
		@classy = ClassyClass.new(params[:classy_class])
		@classy.belongs_to_user = current_user.id
		@classy.save
		flash[:success] = "Schedule updated!"
		redirect_to root_path
	end

end
