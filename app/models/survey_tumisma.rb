class SurveyTumisma < ActiveRecord::Base
  belongs_to :user
   TRAJECT_EVAL = [:talent, :knowledge, :relations, :fame, :money, :marketing, :gender]
end
