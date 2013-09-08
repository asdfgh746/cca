class AddBelongsToUserToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :belongs_to_user, :integer
  end
end
