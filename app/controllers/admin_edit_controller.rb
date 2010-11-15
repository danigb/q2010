
class AdminEditController < AdminController

  def edit
    @name = params[:name]
    @user = User.find params[:user]
    @survey = @user.send("survey_#{@name}")
  end

  def update
    @survey = params[:klass].constantize.find params[:id]
    type = params[:klass].underscore
    @survey.update_attributes(params[type])
    redirect_to "/sudo/#{type.split('_').last}/#{params[:id]}"
  end
end
