class ClassyClass < ActiveRecord::Base
  attr_accessible :name, :teacher, :duration, :belongs_to_day, :block, :classroom_number

  belongs_to :user

  validates :name, presence: true
  validates :teacher, presence: true
end