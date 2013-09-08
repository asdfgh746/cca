class AddStartingAndBufferTimesToSchools < ActiveRecord::Migration
  def change
  	add_column :schools, :start_time, :timestamp
  	add_column :schools, :buffer_time, :integer
  end
end
