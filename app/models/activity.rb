class Activity < ActiveRecord::Base
  default_scope :order => 'id DESC'
end

# == Schema Information
#
# Table name: activities
#
#  id          :integer(4)      not null, primary key
#  category    :string(255)
#  description :string(255)
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

