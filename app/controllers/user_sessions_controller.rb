class UserSessionsController < ApplicationController
  layout 'basic'
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Bienvenidx al cuestionario de Reu08!"
      @user = @user_session.record
      path = @user.survey_completed? ? surveys_path : view_survey_presentacion_path
      redirect_back_or_default path
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Hasta la vista!"
    redirect_back_or_default root_path
  end
end
