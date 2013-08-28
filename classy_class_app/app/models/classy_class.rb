class ClassyClass < ActiveRecord::Base
  attr_accessible :name, :teacher, :duration, :belongs_to_day, :block

  belongs_to :user

  validates :name, presence: true
  validates :teacher, presence: true
  validates :duration, presence: true
end