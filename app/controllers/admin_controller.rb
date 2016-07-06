class AdminController < ApplicationController
  before_filter :require_admin

  private

  def require_admin
    redirect_to :root, alert: "NOPE" unless admin?
  end

  def admin?
    current_user && current_user.is_admin?
  end

end
