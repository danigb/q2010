class SurveyDinerosController < ApplicationController
  layout 'survey'
  inherit_resources
  actions :update


  def edit
    if current_user
    else
      @survey = SurveyDinero.new
    end
    render :action => 'dinero_edit'
  end
end
