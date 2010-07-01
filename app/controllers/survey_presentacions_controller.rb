class SurveyPresentacionsController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update


  def edit
    if current_user
    else
      @survey = SurveyPresentacion.new
    end
    render :action => 'presentacion_edit'
  end
end
