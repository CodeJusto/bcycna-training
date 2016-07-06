class AddPublishedToCoursesAndLessons < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.string :status, default: "Draft"
    end

    change_table :lessons do |t|
      t.string :status, default: "Draft"
    end
  end
end
