class CreateClassyClasses < ActiveRecord::Migration
  def change
    create_table :classy_classes do |t|
    	t.string :name
    	t.string :teacher
    	t.integer :duration
    	
      	t.timestamps
    end
  end
end
