class AddSomeColumns < ActiveRecord::Migration
  def change
    add_column :custom_menus,:parent_id,:integer,:null => true,:index => true
    add_column :custom_menus,:lft,:integer, :null => true, :index => true
    add_column :custom_menus,:rgt,:integer, :null => true, :index => true

    add_column :custom_menus,:depth,:integer,:null => false,:default => 0
    add_column :custom_menus,:children_count,:integer, :null => false,:default => 0

    add_column :offical_accounts,:user_id,:integer,:index => true
  end
end
