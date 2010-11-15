class SurveyDinero < ActiveRecord::Base
  belongs_to :user

  AJOB_XTRA =  [:night, :holiday, :overtime]
  JOB_MONEY  = [:less600, :from1000to1400, :from1400to1800, :more1800]
  AJOB_DECISION =  [:total, :client, :limited, :none, :collective]
  AJOB_VOCATION_MONEY = [:family, :work, :grant, :sponsor, :sale]
  GRANTS_BAD = [:grantpoor, :grantoffer, :grantcriteria, :grantinfo, :granttime, :grantgeo, :grantage]
end

# == Schema Information
#
# Table name: survey_dineros
#
#  id                          :integer(4)      not null, primary key
#  user_id                     :integer(4)
#  laboral_entrepreneur        :boolean(1)
#  laboral_employe             :boolean(1)
#  laboral_various             :boolean(1)
#  laboral_one                 :boolean(1)
#  laboral_black               :boolean(1)
#  laboral_others              :text
#  ajob                        :string(8)
#  ajob_time                   :string(8)
#  ajob_xtra_night             :string(16)
#  ajob_xtra_holiday           :string(16)
#  ajob_xtra_overtime          :string(16)
#  ajob_xtra_paid              :string(16)
#  ajob_money                  :string(16)
#  ajob_decision               :string(16)
#  gestation                   :text
#  ajob_vocation               :string(8)
#  ajob_vocation_money_family  :boolean(1)
#  ajob_vocation_money_work    :boolean(1)
#  ajob_vocation_money_grant   :boolean(1)
#  ajob_vocation_money_sponsor :boolean(1)
#  ajob_vocation_money_sale    :boolean(1)
#  ajob_vocation_money_desc    :text
#  grants                      :string(8)
#  grants_who                  :text
#  grants_bad_grantpoor        :boolean(1)
#  grants_bad_grantoffer       :boolean(1)
#  grants_bad_grantcriteria    :boolean(1)
#  grants_bad_grantinfo        :boolean(1)
#  grants_bad_granttime        :boolean(1)
#  grants_bad_grantgeo         :boolean(1)
#  grants_bad_grantage         :boolean(1)
#  grants_bad_desc             :text
#  bjob                        :string(8)
#  bjob_which                  :text
#  bjob_time                   :string(16)
#  bjob_money                  :string(16)
#  created_at                  :datetime
#  updated_at                  :datetime
#

