class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :username, :email, :password, :password_confirmation, :request_info, :allow_publish

  Survey::CUESTIONARIOS.each do |survey|
    klass = "survey_#{survey}".camelize.constantize
    define_method "survey_#{survey}" do
      survey(klass)
    end
  end

  private
  def survey(klass)
    survey = klass.find_by_user_id(self.id)
    survey ||= klass.create(:user_id => self.id)
    survey
  end

end
