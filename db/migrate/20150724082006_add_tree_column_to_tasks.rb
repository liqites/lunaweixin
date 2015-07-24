class AddTreeColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks,:parent_id,:integer,:null => true,:index => true
    add_column :tasks,:lft,:integer, :null => true, :index => true
    add_column :tasks,:rgt,:integer, :null => true, :index => true

    add_column :tasks,:depth,:integer,:null => false,:default => 0
    add_column :tasks,:children_count,:integer, :null => false,:default => 0
  end
end
