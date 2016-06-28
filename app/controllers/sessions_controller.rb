class SessionsController < ApplicationController
  def create
    @student = Student.find_by(email: params[:email])

    if @student && @student.authenticate(params[:password])
      session[:user_id] = @student.id
      redirect_to courses_path
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
