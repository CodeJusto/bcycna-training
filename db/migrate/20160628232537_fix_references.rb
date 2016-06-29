class FixReferences < ActiveRecord::Migration
  def change 
    change_table :lessons do |t|
      t.remove :courses_id
      t.remove :students_id
      t.references :course
      t.references :student
    end
  end
end
