class Day < ActiveRecord::Base
  attr_accessible :number, :number_of_classes, :belongs_to_schedule

  validates :number, presence: true
  validates :number_of_classes, presence: true
  
  has_and_belongs_to_many :classy_classes
  belongs_to :schedule
end
