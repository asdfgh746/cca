class AddSchoolToUser < ActiveRecord::Migration
  def change
  	add_column :users, :belongs_to_school, :integer
  end
end
