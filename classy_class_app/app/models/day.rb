class Day < ActiveRecord::Base
  attr_accessible :number, :belongs_to_schedule, :order_of_blocks, :belongs_to_school

  validates :number, presence: true
  belongs_to :schedule
  belongs_to :school
end