class SurveyDinerosController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @image = "dineros"
    @survey = current_user ? current_user.survey_dinero :  SurveyDinero.new
  end

  def show
    @image = "dineros"
    render_survey_show 'dinero', User.find(params[:id])
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Autoría'") { view_survey_autoria_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Dineros'", :category => 'update', :url => url_for(@survey))
  end

end
