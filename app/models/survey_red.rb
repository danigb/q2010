class SurveyRed < ActiveRecord::Base

  OPERATING =  [:mac, :windows, :linux]
  INTERNET =  [:home, :cyber, :work]
  INTERNET_TIME =  [:less1, :from1to2, :from2to3, :from3to4, :from4to5, :more5]
  P2P =  [:usually, :ocasion, :never, :know]
  ACCESS =  [:access_yes, :without, :access_no]

end

# == Schema Information
#
# Table name: survey_reds
#
#  id             :integer(4)      not null, primary key
#  user_id        :integer(4)
#  computer       :string(16)
#  operating      :string(32)
#  operating_desc :text
#  internet_home  :boolean(1)      default(FALSE)
#  internet_cyber :boolean(1)      default(FALSE)
#  internet_work  :boolean(1)      default(FALSE)
#  internet_desc  :text
#  internet_time  :string(32)
#  web_links      :text
#  p2p            :string(32)
#  access         :string(32)
#  web_find       :string(32)
#  created_at     :datetime
#  updated_at     :datetime
#

