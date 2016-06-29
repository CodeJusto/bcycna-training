class AddFeaturedImageToLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.string :featured_image
    end
  end
end
