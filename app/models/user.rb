# == Schema Information
#
# Table name: users
#
#  id                :integer(4)      not null, primary key
#  username          :string(255)     not null
#  email             :string(255)     not null
#  request_info      :boolean(1)
#  allow_publish     :boolean(1)
#  crypted_password  :string(255)     not null
#  password_salt     :string(255)     not null
#  persistence_token :string(255)     not null
#  survey_completed  :boolean(1)      default(FALSE)
#  created_at        :datetime
#  updated_at        :datetime
#
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



