class LessonsController < PrivateController
  def index
    @lessons = Lesson.all
    @course = Course.find(params[:course_id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.new(lesson_params)
    if @lesson.save!
      redirect_to course_lessons_path
    else
      redirect_to new_course_lesson_path
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def lesson_params
    params.require(:lesson).permit(
      :name, :content, :featured_image
    )
  end
end
