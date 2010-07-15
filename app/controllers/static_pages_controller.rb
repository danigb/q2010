class StaticPagesController < ApplicationController
  layout 'basic'

  def finished
    render :action => 'finished', :layout => 'survey'
  end
end
