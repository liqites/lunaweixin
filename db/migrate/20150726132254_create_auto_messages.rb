class CreateAutoMessages < ActiveRecord::Migration
  def change
    create_table :auto_messages do |t|
      t.integer :message_type
      t.string :content
      t.string :keyword

      t.timestamps null: false
    end
  end
end
