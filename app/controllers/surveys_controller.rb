class SurveysController < ApplicationController
  layout 'basic'
  before_filter :require_user, :except => :update
  before_filter :require_admin, :only => :update

  def index
    if current_user.survey_completed?
      @users = User.all
    else
      render :action => 'not_completed'
    end
  end
end
