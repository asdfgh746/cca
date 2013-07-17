class AddColumnsToClassesAndDays < ActiveRecord::Migration
  def change
  	add_column :classy_classes, :belongs_to_day, :integer
  	add_column :days, :belongs_to_schedule, :integer
  end
end
