class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create

		if @class_check = ClassyClass.where(belongs_to_user: current_user.id).first
			if @class_check.block == params[:classy_class]["block"]
				@class_check.destroy
			end
		end

		@classy = ClassyClass.create(params[:classy_class])
		@classy.belongs_to_user = current_user.id
		@classy.save

		flash[:alert] = "Schedule updated!"
		redirect_to :back
	end

end
