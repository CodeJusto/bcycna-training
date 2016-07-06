class RemoveExtraAdminFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :admin
  end
end
