class SurveyTumismasController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_tumisma :  SurveyTumisma.new
  end

  def show
    render_survey_show 'tumisma', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Experiencias'") { view_survey_experiencia_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Tu mismx'", :category => 'update', :url => url_for(@survey))
  end

end
