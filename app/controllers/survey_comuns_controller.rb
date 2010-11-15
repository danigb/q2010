class SurveyComunsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_comun :  SurveyComun.new
  end

  def show
    render_survey_show 'comun', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Muchas gracias!") { finished_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Común'", :category => 'update', :url => url_for(@survey))
  end
end
