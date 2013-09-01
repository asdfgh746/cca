class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
    	t.string :name
    	t.string :description
    	t.integer :number_of_days
    	t.integer :number_of_periods
    end
  end
end
