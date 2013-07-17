class Day < ActiveRecord::Base
  attr_accessible :number, :number_of_classes, :order_of_classes

  validates :number, presence: true
  validates :number_of_classes, presence: true
  validates :order_of_classes, presence: true

  has_many :classy_class
  belongs_to :schedule
end
