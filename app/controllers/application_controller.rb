# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  filter_parameter_logging :password
  include AuthModule
  helper_method :current_user, :admin_page?


  def admin_required
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "reu08"
    end
    @admin_page = true
  end

  def render_survey_show(name, user)
    @survey_name = name
    @user = user
    @survey = user.send("survey_#{name}")
    render :file => '/surveys/show', :layout => 'basic'
  end

  def admin_page?
    @admin_page == true
  end
end
