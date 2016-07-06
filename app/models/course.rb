class Course < ActiveRecord::Base
  has_many :lessons
  mount_uploader :image, ImageUploader
end
