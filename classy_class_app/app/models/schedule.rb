class Schedule < ActiveRecord::Base
  attr_accessible :number_of_days
  has_many :days
end
