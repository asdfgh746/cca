class ClassyClass < ActiveRecord::Base
  attr_accessible :name, :teacher, :duration, :belongs_to_day
  has_and_belongs_to_many :day

  validates :name, presence: true
  validates :teacher, presence: true
  validates :duration, presence: true
end
