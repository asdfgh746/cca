class Schedule < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :number_of_days, :belongs_to_user, :number_of_blocks
  
  belongs_to :user
=======
  attr_accessible :number_of_days, :belongs_to_user
>>>>>>> c27820af4adb438eaa5bd54ad21447a7eb1c3eec
  has_many :days

  validates :number_of_days, :inclusion => 1..10
  validates :number_of_blocks, :inclusion => 1..26
end
