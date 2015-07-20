class ChangeColumnForAttendences < ActiveRecord::Migration
  def change
    remove_column :attendences,:message
    add_column :attendences,:content,:string
  end
end
