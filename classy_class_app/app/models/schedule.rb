class Schedule < ActiveRecord::Base
  attr_accessible :number_of_days, :belongs_to_user
  has_many :days
end
