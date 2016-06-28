class AddFieldsToCourses < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.string :role
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
