class AddColumnToSchedule < ActiveRecord::Migration
  def change
  	add_column :schedules, :belongs_to_user, :integer
  end
end
