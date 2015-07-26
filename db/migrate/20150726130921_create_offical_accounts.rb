class CreateOfficalAccounts < ActiveRecord::Migration
  def change
    create_table :offical_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
