class CoursesController < PrivateController
  def index
    @courses = Course.all
  end

  def filter
    @filter = Course.where('description LIKE ? OR name LIKE ?', "%#{params[:filter]}%", "%#{params[:filter]}%")
    render :json => @filter
  end

  def create
  end

  def destroy
  end
end
