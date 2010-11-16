class UserSessionsController < ApplicationController
  layout 'basic'
  inherit_resources
  actions :new, :create, :destroy

  def create
    create!(:notice => "Bienvenidx") { @user.survey_completed? ? surveys_path : view_survey_presentacion_path }
  end

  def destroy
    destroy!(:notice => 'Hasta la vista') do |action|
      action.html {redirect_to root_path}
    end
  end
end
