class AddColumnToClassy < ActiveRecord::Migration
  def change
  	add_column :classy_classes, :belongs_to_user, :integer
  end
end
