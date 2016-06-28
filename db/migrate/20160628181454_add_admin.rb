class AddAdmin < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.boolean :admin, default: false
    end
  end
end
