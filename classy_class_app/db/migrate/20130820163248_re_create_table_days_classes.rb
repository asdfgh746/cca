class ReCreateTableDaysClasses < ActiveRecord::Migration
    drop_table :days_classy_classes

    create_table :classy_classes_days, id: false do |t|
    	t.belongs_to :day
    	t.belongs_to :classy_class
    end
end
