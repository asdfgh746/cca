class AddStartingAndBufferTimesToSchedule < ActiveRecord::Migration
  def change
  	add_column :schedules, :start_time, :timestamp
  	add_column :schedules, :buffer_time, :integer
  end
end
