class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :organization
      t.string :role
      t.string :password_digest
    end

    create_table :lessons do |t|
      t.string :name
      t.string :content # From tinyMCE?
      t.references :courses
      t.references :students
    end

    create_table :courses do |t|
      t.string :name
      t.string :image
    end
  end
end
