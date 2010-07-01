class SurveyPresentacionsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_presentacion :  SurveyPresentacion.new
    render :action => 'presentacion_edit'
  end

  def show
    @survey = User.find(params[:id]).survey_presentacion
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Tumismx'") { view_survey_tumisma_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Presentación'", :category => 'update', :url => url_for(@survey))
  end


end
