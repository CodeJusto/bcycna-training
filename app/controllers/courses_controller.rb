class CoursesController < PrivateController
  def index
    @courses = Course.where('status LIKE ?', "Published")
  end

  def filter
    @filter = Course.where('description LIKE ? OR name LIKE ? AND role LIKE ? AND status LIKE ?', "%#{params[:filter]}%", "%#{params[:filter]}%", "%#{params[:role]}%", "Published")
    render :json => @filter
  end

  def create
  end

  def destroy
  end
end
