class Event < ActiveRecord::Base
  attr_accessible :name, :description, :date_of_event

  validates :name, presence: true
  validates :date_of_event, presence: true
end
