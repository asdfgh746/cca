class Event < ActiveRecord::Base
  attr_accessible :name, :description, :date_of_event
end
