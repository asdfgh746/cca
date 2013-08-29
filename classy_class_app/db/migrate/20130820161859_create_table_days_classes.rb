class CreateTableDaysClasses < ActiveRecord::Migration
    create_table :days_classy_classes do |t|
    	t.belongs_to :day
    	t.belongs_to :classy_class
    end
end
