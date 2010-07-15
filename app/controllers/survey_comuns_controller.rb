class SurveyComunsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_comun :  SurveyComun.new
  end

  def show
    @survey = User.find(params[:id]).survey_comun
    show!
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Tumismx'") { view_survey_tumisma_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Común'", :category => 'update', :url => url_for(@survey))
  end
end
