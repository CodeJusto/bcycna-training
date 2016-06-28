class PagesController < ApplicationController
  def index
    @student = Student.new
  end
end
