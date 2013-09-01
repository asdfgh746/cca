class AddBelongsToSchoolToDays < ActiveRecord::Migration
  def change
  	add_column :days, :belongs_to_school, :integer
  end
end
