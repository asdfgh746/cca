class AddOrderOfBlocksToDay < ActiveRecord::Migration
  def change
  	add_column :days, :order_of_blocks, :string
  end
end
