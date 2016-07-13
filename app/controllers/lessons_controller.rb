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

  def next
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
    @new_lesson = @course.lessons.where("id > ?", @lesson.id).first
    unless @new_lesson.nil?
      redirect_to course_lesson_path(@course, @new_lesson)
    else
      redirect_to course_lessons_path 
    end
  end

  def previous
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
    @new_lesson = @course.lessons.where("id < ?", @lesson.id).last
    unless @new_lesson.nil?
      redirect_to course_lesson_path(@course, @new_lesson)
    else
      redirect_to course_lessons_path
    end
  end


  def update
  end

  def destroy
  end


end
