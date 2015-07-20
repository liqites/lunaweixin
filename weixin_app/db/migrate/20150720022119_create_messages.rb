class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to_user
      t.string :from_user
      t.datetime :create_time
      t.string :msg_type
      t.string :content
      t.string :msg_id

      t.timestamps null: false
    end
  end
end
