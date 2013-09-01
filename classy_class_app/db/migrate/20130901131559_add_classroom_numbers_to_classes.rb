class AddClassroomNumbersToClasses < ActiveRecord::Migration
  def change
  	add_column :classy_classes, :classroom_number, :integer
  end
end
