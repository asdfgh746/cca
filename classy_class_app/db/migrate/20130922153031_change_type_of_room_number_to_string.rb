class ChangeTypeOfRoomNumberToString < ActiveRecord::Migration
	def change
		change_column :classy_classes, :classroom_number, :string
	end
end
