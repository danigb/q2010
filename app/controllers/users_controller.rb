class UsersController < ApplicationController
  before_filter :admin_required, :only => [:index, :show]
  before_filter :require_user, :only => [:edit, :update]

  layout 'survey'
  inherit_resources
  actions :new, :create, :update, :edit

  def edit
    @user = current_user
    edit!
  end

  def create
    create!(:notice => "Gracias por darte de alta") { view_survey_presentacion_path }
    Activity.create(:description => "#{@user.username} se ha dado de alta", :category => 'create_user', :url => admin_users_url) if @user && @user.valid?
  end
end
