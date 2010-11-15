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

# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  body       :text
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

