class SurveyComun < ActiveRecord::Base
  POLICY =  [:access, :extend, :policy_future, :work, :patrimony]
  CULTURE_STEPS =  [:budget, :sponsors, :space, :participate, :industry, :free_net, :pirate, :events, :law]
  CULTURE_ACTION =  [:sindicate, :asociation, :movement, :group]
  POLIS_ACTION =  [:polis_manifestation, :polis_act, :polis_campaign]
  CONDITIONS =  [:excelent, :dignified, :normal, :precarious, :miserable]
  ADMINISTRATION =  [:culture, :home, :inmigration, :work, :health, :gender]
  FUTURE =  [:platform, :asociation, :syndicate, :campaign, :festival, :ofices, :online, :ocupy]
end
