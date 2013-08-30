class School < ActiveRecord::Base
	attr_accessible :name, :description, :number_of_days, :number_of_periods

	has_many :users
	has_one :schedule

	validates :name, presence: true
	validates :number_of_days, presence: true, allow_nil: { inclusion: 1..10 }
	validates :number_of_periods, presence: true, allow_nil: { inclusion: 1..26 }
end
