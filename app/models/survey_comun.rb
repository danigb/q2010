class SurveyComun < ActiveRecord::Base
  POLICY =  [:access, :extend, :policy_future, :work, :patrimony]
  CULTURE_STEPS =  [:budget, :sponsors, :space, :participate, :industry, :free_net, :pirate, :events, :law]
  CULTURE_ACTION =  [:sindicate, :asociation, :movement, :group]
  POLIS_ACTION =  [:polis_manifestation, :polis_act, :polis_campaign]
  CONDITIONS =  [:excelent, :dignified, :normal, :precarious, :miserable]
  ADMINISTRATION =  [:culture, :home, :inmigration, :work, :health, :gender]
  FUTURE =  [:platform, :asociation, :syndicate, :campaign, :festival, :ofices, :online, :ocupy]
end

# == Schema Information
#
# Table name: survey_comuns
#
#  id                               :integer(4)      not null, primary key
#  user_id                          :integer(4)
#  institution                      :text
#  policy_access                    :string(8)
#  policy_extend                    :string(8)
#  policy_policy_future             :string(8)
#  policy_work                      :string(8)
#  policy_patrimony                 :string(8)
#  culture_steps_budget             :string(8)
#  culture_steps_sponsors           :string(8)
#  culture_steps_space              :string(8)
#  culture_steps_participate        :string(8)
#  culture_steps_industry           :string(8)
#  culture_steps_free_net           :string(8)
#  culture_steps_pirate             :string(8)
#  culture_steps_events             :string(8)
#  culture_steps_law                :string(8)
#  situation                        :text
#  culture_action_sindicate         :boolean(1)      default(FALSE)
#  culture_action_asociation        :boolean(1)      default(FALSE)
#  culture_action_movement          :boolean(1)      default(FALSE)
#  culture_action_group             :boolean(1)      default(FALSE)
#  culture_action_desc              :text
#  polis_action_polis_manifestation :boolean(1)      default(FALSE)
#  polis_action_polis_act           :boolean(1)      default(FALSE)
#  polis_action_polis_campaign      :boolean(1)      default(FALSE)
#  polis_action_desc                :text
#  conditions                       :string(32)
#  administration_culture           :string(16)
#  administration_home              :string(16)
#  administration_inmigration       :string(16)
#  administration_work              :string(16)
#  administration_health            :string(16)
#  administration_gender            :string(16)
#  future_platform                  :boolean(1)      default(FALSE)
#  future_asociation                :boolean(1)      default(FALSE)
#  future_syndicate                 :boolean(1)      default(FALSE)
#  future_campaign                  :boolean(1)      default(FALSE)
#  future_festival                  :boolean(1)      default(FALSE)
#  future_ofices                    :boolean(1)      default(FALSE)
#  future_online                    :boolean(1)      default(FALSE)
#  future_ocupy                     :boolean(1)      default(FALSE)
#  future_desc                      :text
#  proposal                         :text
#  created_at                       :datetime
#  updated_at                       :datetime
#

