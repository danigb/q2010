class UserController < ApplicationController
  before_filter :require_user, :only => [:edit, :update, :show]
  inherit_resources
  defaults :singleton => true
  layout 'survey'

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
    @user = current_user
    update! do |success,failure|
      success.html {redirect_to(user_path)}
      failure.html {render :action => 'edit'}
    end
    Activity.create(:description => "#{current_user.username} ha modificado su datos", :category => 'update', :url => url_for(@user))
  end

  def create
    create!(:notice => "Gracias por darte de alta") { view_survey_presentacion_path }
  end
end
