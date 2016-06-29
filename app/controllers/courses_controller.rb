class CoursesController < PrivateController
  def index
    @courses = Course.all
  end

  def filter
    @filter = Course.where('description LIKE ? OR name LIKE ? AND role LIKE ?', "%#{params[:filter]}%", "%#{params[:filter]}%", "%#{params[:role]}%")
    render :json => @filter
  end

  def create
  end

  def destroy
  end
end
