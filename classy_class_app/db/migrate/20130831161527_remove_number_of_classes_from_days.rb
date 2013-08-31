class RemoveNumberOfClassesFromDays < ActiveRecord::Migration
	def change
		remove_column :days, :number_of_classes
	end
end
