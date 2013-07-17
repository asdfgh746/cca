class RemoveColumnFromDay < ActiveRecord::Migration
  def change
  	remove_column :day, :order_of_classes
  end
end
