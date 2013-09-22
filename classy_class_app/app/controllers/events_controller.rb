class EventsController < ApplicationController
	def index
		@events = Event.all
		@date = params[:month] ? Date.parse(params[:month]) : Date.today
		
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])

		if @event.belongs_to_school == nil
			@event.belongs_to_user = current_user.id
		else
			@school_name = params[:event]['belongs_to_school']
			@school = School.where(name: @school_name).first
			@event.belongs_to_school = @school.id
		end

		if @event.save
			flash[:success] = "Event added."
			redirect_to events_path
		else
			render 'new'
		end
	end

	def show
		if @event = Event.find_by_id(params[:id])
			render 'show'
		else
			flash[:alert] = "Event not found."
			redirect_to events_path
		end
	end
end
