class PrivateController < ApplicationController

  before_action :require_login

  private

  def require_login
    unless current_user
      # Add toast error here
      redirect_to root_path
    end
  end

end