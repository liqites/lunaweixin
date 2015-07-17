class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.references :weixin_user, index: true, foreign_key: true
      t.string :message

      t.timestamps null: false
    end
  end
end
