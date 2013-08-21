class ClassyClassesController < ApplicationController

	def new
		render 'new'
	end

	def create

		@cur_block = params[:classy_class]["block"]

		#THIS STUFF NEEDS TO BE FIX'D
		ClassyClass.all.each do |cc|
			if cc.user == current_user && cc.block == @cur_block
				cc.destroy
			end
		end

		@classy = ClassyClass.create(params[:classy_class])
		@classy.user = current_user
		@classy.save

		flash[:success] = "Schedule updated!"
		redirect_to root_path
	end

end
