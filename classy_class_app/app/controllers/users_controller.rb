class UsersController < ApplicationController

  	def show
    	@user = User.find(params[:id])
  	end

	def new
		@user = User.new
	end

	def update
		@school = School.where(name: params[:user]["belongs_to_school"]).first
		current_user.belongs_to_school = @school.id
		current_user.save(validate: false)
		sign_in current_user

		flash[:success] = "School updated."
		redirect_to set_schedule_with_school_path
	end

	def create
		@user = User.new(params[:user])

		if @user.save	  		
	  		sign_in @user
	  		flash[:success] = "Welcome to CCA!"
	  		redirect_to set_school_path
		else
	  		render 'new'
		end
	end
end
