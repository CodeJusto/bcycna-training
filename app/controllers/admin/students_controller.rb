require 'securerandom'
class Admin::StudentsController < AdminController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save 
      redirect_to admin_students_path
    else
      #Add error message here
      redirect_to admin_students_path
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
    render :show
  end

  def destroy 
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to admin_students_path
  end

protected

  def student_params
    params.require(:student).permit(:name, :email, :password, :organization)
  end


end 