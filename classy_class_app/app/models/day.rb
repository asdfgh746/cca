class Day < ActiveRecord::Base
  attr_accessible :number, :number_of_classes, :belongs_to_schedule, :order_of_blocks

  validates :number, presence: true
  belongs_to :schedule
end
