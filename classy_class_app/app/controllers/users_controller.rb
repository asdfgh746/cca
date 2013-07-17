class UsersController < ApplicationController

  	def show
    	@user = User.find(params[:id])
  	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			@schedule = Schedule.new
			@schedule.belongs_to_user = @user.id
			@schedule.save(validate: false)
	  		
	  		sign_in @user
	  		flash[:success] = "Welcome to the Sample App!"
	  		redirect_to @user
		else
	  		render 'new'
		end
	end
end
