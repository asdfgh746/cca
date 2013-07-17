class ClassyClass < ActiveRecord::Base
  attr_accessible :name, :teacher, :duration
  belongs_to :day

  validates :name, presence: true
  validates :teacher, presence: true
  validates :duration, presence: true
end
