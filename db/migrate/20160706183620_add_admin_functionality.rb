class AddAdminFunctionality < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.boolean :is_admin, default: false

    end
  end
end
