class SurveyAutoriasController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_autoria :  SurveyAutoria.new
  end

  def show
    render_survey_show 'autoria', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Hábitat'") { view_survey_habitat_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Autoría'", :category => 'update', :url => url_for(@survey))
  end
end
