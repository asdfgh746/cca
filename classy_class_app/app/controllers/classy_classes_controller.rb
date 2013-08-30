class ClassyClassesController < ApplicationController

	def new
		@classy = ClassyClass.new
	end

	def create

		ClassyClass.where(belongs_to_user: current_user.id).each do |classy|
			if classy.block == params[:classy_class]["block"]
				classy.destroy
			end
		end

		@classy = ClassyClass.create(params[:classy_class])
		@classy.belongs_to_user = current_user.id
		
		if @classy.save
			flash[:success] = "Class added"
			redirect_to my_schedule_path
		else
			render 'new'
		end
		
	end

end
