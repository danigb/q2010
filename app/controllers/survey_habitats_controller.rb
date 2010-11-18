class SurveyHabitatsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @image = "habitat"
    @survey = current_user ? current_user.survey_habitat :  SurveyHabitat.new
  end

  def show
    @image = "habitat"
    render_survey_show 'habitat', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Redes'") { view_survey_red_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Hábitat'", :category => 'update', :url => url_for(@survey))
  end
end
