class RemoveColumnFromDay < ActiveRecord::Migration
  def change
  	remove_column :days, :order_of_classes
  end
end
