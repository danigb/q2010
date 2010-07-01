class SurveyTumismasController < ApplicationController
  layout 'survey'
  inherit_resources
  #actions :update


    def edit
    @survey = current_user ? current_user.survey_tumisma :  SurveyTumisma.new
    render :action => 'tumisma_edit'
  end

  def update
    update!(:notice => "El cuestionario  'Tumismx' se ha guardado. Por favor continúa con el de 'Experiencias'") { survey_experiencia_path  }
  end


end
