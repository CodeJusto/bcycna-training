class Lesson < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
end