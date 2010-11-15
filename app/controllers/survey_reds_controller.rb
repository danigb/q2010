class SurveyRedsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_red :  SurveyRed.new
  end

  def show
    render_survey_show 'red', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Lo común'") { view_survey_comun_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Redes'", :category => 'update', :url => url_for(@survey))
  end
end
