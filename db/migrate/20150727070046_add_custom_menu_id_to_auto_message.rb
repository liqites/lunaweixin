class AddCustomMenuIdToAutoMessage < ActiveRecord::Migration
  def change
    add_column :auto_messages,:custom_menu_id,:integer,index: true
  end
end
