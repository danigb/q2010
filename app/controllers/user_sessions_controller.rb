class UserSessionsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :new, :create, :destroy

  def create
    create!(:notice => "Bienvenidx") { view_survey_presentacion_path }
  end

  def destroy
    destroy!(:notice => 'Hasta la vista') {root_path}
  end
end
