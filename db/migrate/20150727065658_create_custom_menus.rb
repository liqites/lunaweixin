class CreateCustomMenus < ActiveRecord::Migration
  def change
    create_table :custom_menus do |t|
      t.string :name
      t.integer :func
      t.references :offical_account

      t.timestamps null: false
    end
  end
end
