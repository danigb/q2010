class SurveyTumisma < ActiveRecord::Base
  belongs_to :user
   TRAJECT_EVAL = [:talent, :knowledge, :relations, :fame, :money, :marketing, :gender]
end

# == Schema Information
#
# Table name: survey_tumismas
#
#  id                     :integer(4)      not null, primary key
#  user_id                :integer(4)
#  birth                  :string(100)
#  gender                 :string(100)
#  since                  :string(100)
#  books                  :text
#  films                  :text
#  musics                 :text
#  movements              :text
#  influences             :text
#  ilike                  :text
#  dislike                :text
#  isdifferent            :string(8)
#  isdifferent_desc       :text
#  proj_good              :text
#  proj_good_att          :string(32)
#  proj_bad               :text
#  proj_bad_att           :string(32)
#  diffusion              :text
#  traject_eval_talent    :string(16)
#  traject_eval_knowledge :string(16)
#  traject_eval_relations :string(16)
#  traject_eval_fame      :string(16)
#  traject_eval_money     :string(16)
#  traject_eval_marketing :string(16)
#  traject_eval_gender    :string(16)
#  traject_eval           :string(16)
#  traject_eval_desc      :text
#  gender_influence       :string(8)
#  gender_influence_desc  :text
#  created_at             :datetime
#  updated_at             :datetime
#

