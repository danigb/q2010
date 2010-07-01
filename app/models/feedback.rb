class Feedback < ActiveRecord::Base
  belongs_to :user
  
  def author
    if self.user
      "el participante '#{self.user.username}' (#{self.user.email})"
    elsif !self.email.blank?
      "desde #{self.email}"
    else
      'una persona anónima'
    end

  end
end
