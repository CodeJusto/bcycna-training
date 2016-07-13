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

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes(course_params)
    if @course.save
      redirect_to admin_courses_path
    else
      #error message
      redirect_to admin_courses_path
    end
  end

  def toggle
    @course = Course.find(params[:course_id])
    @course.status === "Draft" ? @course.status = "Published" : @course.status = "Draft"
    @course.save
    redirect_to admin_courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :image)
  end


end