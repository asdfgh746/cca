class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create

		ClassyClass.where(belongs_to_user: current_user.id).each do |classy|
			if classy.block == params[:classy_class]["block"]
				classy.destroy
			end
		end

		@classy = ClassyClass.create(params[:classy_class])
		@classy.belongs_to_user = current_user.id
		@classy.save

		flash[:success] = "Schedule updated!"
		redirect_to my_schedule_path
	end

end
