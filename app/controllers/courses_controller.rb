class CoursesController < PrivateController
  def index
    @courses = Course.where('status = ?', "Published")
  end

  def filter
    # First check determines whether or not anything is entered into the search box
    # Checkmark is a default value of forms that cannot be overridden unless user clicks the box,
    # So we are including it here
    if params[:filter] == "" || params[:filter] == "✓" 
      # Checks to see if a button has been pressed given an empty field
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
