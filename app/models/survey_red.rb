class SurveyRed < ActiveRecord::Base

  OPERATING =  [:mac, :windows, :linux]
  INTERNET =  [:home, :cyber, :work]
  INTERNET_TIME =  [:less1, :from1to2, :from2to3, :from3to4, :from4to5, :more5]
  P2P =  [:usually, :ocasion, :never, :know]
  ACCESS =  [:access_yes, :without, :access_no]

end
