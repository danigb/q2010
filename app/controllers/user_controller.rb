class UserController < ApplicationController
  before_filter :require_user, :only => [:edit, :update, :show]
  layout 'basic'

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'Tus datos han sido guardados.'
        format.html { redirect_to user_path }
        format.xml  { head :ok }
        Activity.create(:description => "#{@user.username} ha modificado sus datos", :category => 'update_user', :url => admin_user_path(@user))
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end


  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'Gracias por darte de alta.'
        Activity.create(:description => "#{@user.username} se ha dado de alta", :category => 'create_user', :url => admin_user_path(@user))
        format.html { redirect_to view_survey_presentacion_path }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end
