class DaysController < ApplicationController
	def new
		@day = Day.new
		if params[:id] != nil
			if @school = School.find_by_id(params[:id])
				@days = Day.where(belongs_to_school: @school.id)
			end
		end
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