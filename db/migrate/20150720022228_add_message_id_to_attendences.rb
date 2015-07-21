class AddMessageIdToAttendences < ActiveRecord::Migration
  def change
  	add_column :attendences,:message_id,:integer
  	add_index :attendences,:message_id
  end
end
