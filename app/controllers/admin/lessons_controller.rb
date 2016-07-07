class Admin::LessonsController < AdminController

  def index
    @course = Course.find(params[:course_id])
    @lessons = @course.lessons.all
  end

  def new
    @lesson = Lesson.new
    @course = Course.find(params[:course_id])
  end

  def show
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
  end

  def create
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.new(lesson_params)
    @lesson.save
    @course.save
    redirect_to course_lesson_path(@course.id, @lesson)
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(lesson_params)
    redirect_to admin_course_lessons_path
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to admin_course_lessons_path
  end

  private

  def lesson_params
    params.require(:lesson).permit(
      :name, :content, :featured_image
    )
  end
end