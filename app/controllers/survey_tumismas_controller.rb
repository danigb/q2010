class SurveyTumismasController < ApplicationController
  layout 'survey'
  inherit_resources
  #actions :update


  def edit
    if current_user
    else
      @survey = SurveyTumisma.new
    end
    render :action => 'tumisma_edit'
  end
end
