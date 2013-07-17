class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :number_of_days
      t.timestamps
    end
  end
end
