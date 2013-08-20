class AddBlockColumnToDay < ActiveRecord::Migration
  def change
  	add_column :classy_classes, :block, :string
  end
end
