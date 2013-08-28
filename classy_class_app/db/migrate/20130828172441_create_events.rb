class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :description
    	t.timestamp :date_of_event
    end
  end
end