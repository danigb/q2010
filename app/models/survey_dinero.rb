class SurveyDinero < ActiveRecord::Base
  belongs_to :user

  AJOB_XTRA =  [:night, :holiday, :overtime]
  JOB_MONEY  = [:less600, :from1000to1400, :from1400to1800, :more1800]
  AJOB_DECISION =  [:total, :client, :limited, :none, :collective]
  AJOB_VOCATION_MONEY = [:family, :work, :grant, :sponsor, :sale]
  GRANTS_BAD = [:grantpoor, :grantoffer, :grantcriteria, :grantinfo, :granttime, :grantgeo, :grantage]
end
