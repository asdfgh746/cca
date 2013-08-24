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

		flash[:alert] = "Schedule updated!"
		redirect_to :back
	end

end