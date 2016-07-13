class CoursesController < PrivateController
  def index
    @courses = Course.where('status = ?', "Published")
  end

  def filter
    
    if params[:filter] == "" || params[:filter] == "✓" 
      if params[:role] == ""
        @filter = Course.where('status = ?', "Published")
      else
        @filter = Course.where('role = ? AND status = ?', params[:role], "Published")
      end
    elsif params[:role] == ""
      @filter = Course.where('name LIKE ? OR description LIKE ? AND status = ?' , "%" + params[:filter] + "%", "%" + params[:filter] + "%", "Published")
    else
      @selection = Course.where('role = ?', params[:role])
      @filter = @selection.where('description LIKE ? OR name LIKE ? AND status = ?', "%" + params[:filter] + "%", "%" + params[:filter] + "%", "Published")
    end
    render :json => @filter 
  end

  def create
  end

  def destroy
  end
end
