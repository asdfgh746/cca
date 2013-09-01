class Schedule < ActiveRecord::Base
  attr_accessible :number_of_days, :belongs_to_user, :number_of_blocks
  
  belongs_to :user
  has_many :days

  validates :number_of_days, presence: true, allow_nil: { inclusion: 1..10 }
  validates :number_of_blocks, presence: true, allow_nil: { inclusion: 1..26 }
end