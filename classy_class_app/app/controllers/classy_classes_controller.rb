class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create
<<<<<<< HEAD

		ClassyClass.where(belongs_to_user: current_user.id).each do |classy|
			if classy.block == params[:classy_class]["block"]
				classy.destroy
			end
		end

		@classy = ClassyClass.create(params[:classy_class])
		@classy.belongs_to_user = current_user.id
=======
		@classy = ClassyClass.new(params[:classy_class])
>>>>>>> c27820af4adb438eaa5bd54ad21447a7eb1c3eec
		@classy.save

		flash[:success] = "Schedule updated!"
		redirect_to root_path
	end

end
