class LessonsController < PrivateController
  def index
    @lessons = Lesson.all
    @course = Course.find(params[:course_id])
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
