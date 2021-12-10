class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id, null: false
      t.string :title, null: false
      t.datetime :period

      t.timestamps
    end
  end
end
