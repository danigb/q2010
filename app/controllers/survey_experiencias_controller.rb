class SurveyExperienciasController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_experiencia :  SurveyExperiencia.new
  end

  def show
    @survey = User.find(params[:id]).survey_experiencia
    show!
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Dineros'") { view_survey_dinero_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Experiencia'", :category => 'update', :url => url_for(@survey))
  end
end
