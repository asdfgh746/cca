class AddExceptionDaysToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :exception_day, :boolean, default: false
  end
end
