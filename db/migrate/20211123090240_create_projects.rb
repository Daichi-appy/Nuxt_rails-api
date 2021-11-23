class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.datetime :period

      t.timestamps
    end
  end
end
