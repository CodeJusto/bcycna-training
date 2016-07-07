class LessonsController < PrivateController
  def index
    @course = Course.find(params[:course_id])
    @lessons = @course.lessons.all
  end

  def create
    # @course = Course.find(params[:course_id])
    # @lesson = @course.lessons.new(lesson_params)
    # if @lesson.save!
    #   redirect_to course_lessons_path
    # else
    #   redirect_to new_course_lesson_path
    # end
  end

  def show
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
  end

  def destroy
  end


end
