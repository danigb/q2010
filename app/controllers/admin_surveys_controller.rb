class AdminSurveysController < AdminController

  def index
    @users = User.all
  end

  def edit
    raise ActiveRecord::RecordNotFound.new if params[:survey_name].blank?
    @name = params[:survey_name]
    @user = User.find params[:id]
    @survey = @user.send("survey_#{@name}")
  end

  def update
    raise ActiveRecord::RecordNotFound.new if params[:survey_name].blank?
    @name = params[:survey_name]
    @user = User.find params[:id]
    @survey = @user.send("survey_#{@name}")
    data = params["survey_#{@name}".to_sym]
    if @survey.update_attributes(data)
      flash[:notice] = "Guardado!"
    else
      flash[:error] = "Horror!"
    end
    render :action => 'edit'

  end

  def show
    @user = User.find params[:id]
  end
end
