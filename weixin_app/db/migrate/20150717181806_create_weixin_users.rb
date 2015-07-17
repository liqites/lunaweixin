class CreateWeixinUsers < ActiveRecord::Migration
  def change
    create_table :weixin_users do |t|
      t.string :name
      t.string :openid

      t.timestamps null: false
    end
  end
end
