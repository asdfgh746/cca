class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :number
      t.integer :number_of_classes
      t.string :order_of_classes
      
      t.timestamps
    end
  end
end
