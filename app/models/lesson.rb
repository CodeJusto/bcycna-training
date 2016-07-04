class Lesson < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  mount_uploader :featured_image, ImageUploader
end
