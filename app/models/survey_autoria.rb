class SurveyAutoria < ActiveRecord::Base
  AUTHORS =  [:none, :various, :alias, :collective, :name, :company]
  
end

# == Schema Information
#
# Table name: survey_autorias
#
#  id                :integer(4)      not null, primary key
#  user_id           :integer(4)
#  author_none       :boolean(1)      default(FALSE)
#  author_various    :boolean(1)      default(FALSE)
#  author_alias      :boolean(1)      default(FALSE)
#  author_collective :boolean(1)      default(FALSE)
#  author_name       :boolean(1)      default(FALSE)
#  author_company    :boolean(1)      default(FALSE)
#  author_desc       :text
#  copyright_why     :text
#  cc                :text
#  cc_desc           :text
#  author_asoc       :boolean(1)
#  author_asoc_desc  :text
#  author_asoc_why   :text
#  created_at        :datetime
#  updated_at        :datetime
#

