class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.references :project, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
