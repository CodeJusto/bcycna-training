class Student < ActiveRecord::Base
  has_many :lessons
  has_secure_password
end
