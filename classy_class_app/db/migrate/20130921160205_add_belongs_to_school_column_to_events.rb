class AddBelongsToSchoolColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :belongs_to_school, :integer
  end
end
