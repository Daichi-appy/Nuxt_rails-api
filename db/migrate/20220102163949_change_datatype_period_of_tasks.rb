class ChangeDatatypePeriodOfTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :period, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
