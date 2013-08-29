class AddBlocksPerDayColumnToSchedules < ActiveRecord::Migration
  def change
  	add_column :schedules, :number_of_blocks, :integer
  end
end
