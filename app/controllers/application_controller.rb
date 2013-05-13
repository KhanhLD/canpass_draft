class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_locale
  
  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
  end
  
  def must_super
    redirect_to(root_path) unless current_user.role_id == 1  
  end
  
  private
  def set_locale
    I18n.locale = cookies[:locale] || I18n.default_locale
  end
end