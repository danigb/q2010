class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :username, :email, :password, :password_confirmation, :request_info, :allow_publish

  def survey_presentacion
    survey(SurveyPresentacion)
  end

  def survey_tumisma
    survey(SurveyTumisma)
  end

  private
  def survey(klass)
    survey = klass.find_by_user_id(self.id)
    survey ||= klass.create(:user_id => self.id)
    survey
  end

end
