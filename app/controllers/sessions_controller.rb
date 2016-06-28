class SessionsController < ApplicationController
  def create
    @student = Student.find_by(email: params[:email], password: params[:password])
    unless @student.nil? 
      session[:id] = @student.id
      redirect_to students_path
    else
      # Add error toastbox
      redirect_to root_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end
