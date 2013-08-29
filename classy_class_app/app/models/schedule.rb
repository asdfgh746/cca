class Schedule < ActiveRecord::Base
  attr_accessible :number_of_days, :belongs_to_user, :number_of_blocks
  
  belongs_to :user
  has_many :days

  validates :number_of_days, :inclusion => 1..10
  validates :number_of_blocks, :inclusion => 1..26
end