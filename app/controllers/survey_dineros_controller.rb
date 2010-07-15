class SurveyDinerosController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update, :show

  def edit
    @survey = current_user ? current_user.survey_dinero :  SurveyDinero.new
  end

  def show
    @survey = User.find(params[:id]).survey_dinero
    show!
  end

  def update
    update!(:notice => "Cuestionario guardado. Por favor continúa con el de 'Autoría'") { view_survey_autoria_path }
    Activity.create(:description => "#{current_user.username} ha modificado su 'Dineros'", :category => 'update', :url => url_for(@survey))
  end

end
