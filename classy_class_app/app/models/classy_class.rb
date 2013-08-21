class ClassyClass < ActiveRecord::Base
  attr_accessible :name, :teacher, :duration, :belongs_to_day, :block
  has_and_belongs_to_many :days

  belongs_to :user

  validates :name, presence: true
  validates :teacher, presence: true
  validates :duration, presence: true
end
