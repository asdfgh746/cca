class DaysController < ApplicationController
	def new
		@day = Day.new
	end

	def edit
	end

	def update
		@day = Day.find_by_id(params[:id])
		@day.update_attributes(params[:day])
		flash[:success] = "Day updated."
		redirect_to :back
	end
end