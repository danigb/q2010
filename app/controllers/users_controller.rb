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
  end
end
