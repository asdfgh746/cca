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
		@event.belongs_to_user = current_user.id
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
