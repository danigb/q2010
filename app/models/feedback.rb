class Feedback < ActiveRecord::Base
  belongs_to :user
  
  def author
    if self.user
      "#{self.user.username} (#{self.user.email})"
    elsif self.email.blank?
      "alguien en #{self.email}"
    else
      'alguien anónimamente'
    end

  end
end
