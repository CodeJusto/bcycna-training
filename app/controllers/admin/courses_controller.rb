class Admin::CoursesController < AdminController

  def index 
    @courses = Course.all
  end

  def new 
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save! 
    params[:id] = @course.id
    redirect_to admin_courses_path
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :image)
  end


end