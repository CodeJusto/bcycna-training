class SessionsController < ApplicationController
  def create
    @student = Student.find_by(email: params[:email])

    if @student && @student.authenticate(params[:password])
      session[:user_id] = @student.id
      if @student.is_admin?
        redirect_to admin_courses_path
      else
        redirect_to courses_path
      end
    else
      # Add error toastbox
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
