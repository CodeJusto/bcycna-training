class AddKey < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.string :key
    end
  end
end
