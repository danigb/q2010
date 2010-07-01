class SurveyExperienciasController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update


  def edit
    if current_user
    else
      @survey = SurveyExperiencia.new
    end
    render :action => 'experiencia_edit'
  end
end
