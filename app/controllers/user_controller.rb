class UserController < ApplicationController
  before_filter :require_user, :only => [:edit, :update, :show]
  layout 'survey'

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'Tus datos han sido guardados.'
        format.html { redirect_to user_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end


  def create
    @user = CurrentUser.new(params[:current_user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'Gracias por darte de alta.'
        format.html { redirect_to view_survey_presentacion_path }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end
