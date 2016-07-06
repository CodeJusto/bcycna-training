class Admin::StudentsController < AdminController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
    render :show
  end

protected

  def student_params
    params.require(:student).permit(:name, :email, :password, :organization)
  end


end