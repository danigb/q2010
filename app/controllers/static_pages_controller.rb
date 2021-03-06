class StaticPagesController < ApplicationController
  layout 'basic'
  before_filter :require_user, :only => [:finished]

  caches_page :whosbehind, :help, :notonline

  def whosbehind
    
  end

  def help
  end

  def notonline

  end

  def finished
    Activity.create(:description => "#{current_user.username} parece que ha completado su cuestionario", :category => 'survey_completed', :url => admin_user_path(current_user))
    render :action => 'finished', :layout => 'survey'
  end
end
