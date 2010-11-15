class SurveyExperiencia < ActiveRecord::Base

  belongs_to :user

  STUDY_CYCLES = [:studies_eso, :studies_bachiller, :studies_fp_medio, :studies_fp_superior,
    :studies_uni_completa, :studies_uni_incompleta, :studies_postgrado, :studies_doctorado]

  STUDIES =  [:academica, :transmision, :talleres, :empleo, :aprendizaje, :internet, :biblioteca]
  FORMATION =  [:name, :duration, :entity, :amount, :evaluation]
  FORMATION_ACCESS =  [:money, :offer, :info, :time, :geo]
end

# == Schema Information
#
# Table name: survey_experiencias
#
#  id                          :integer(4)      not null, primary key
#  user_id                     :integer(4)
#  studies                     :string(32)
#  studies_eso                 :boolean(1)
#  studies_bachiller           :boolean(1)
#  studies_fp_medio            :boolean(1)
#  studies_fp_superior         :boolean(1)
#  studies_uni_completa        :boolean(1)
#  studies_uni_incompleta      :boolean(1)
#  studies_postgrado           :boolean(1)
#  studies_doctorado           :boolean(1)
#  studies_eval_academica      :string(4)
#  studies_eval_transmision    :string(4)
#  studies_eval_talleres       :string(4)
#  studies_eval_empleo         :string(4)
#  studies_eval_aprendizaje    :string(4)
#  studies_eval_internet       :string(4)
#  studies_eval_biblioteca     :string(4)
#  studies_eval_desc           :text
#  formation                   :string(4)
#  formation_desc              :text
#  formation_kind_course       :boolean(1)
#  formation_kind_exchange     :boolean(1)
#  formation_kind_auto         :boolean(1)
#  formation_kind_net          :boolean(1)
#  formation_kind_desc         :text
#  formation_done_name_1       :string(32)
#  formation_done_name_2       :string(32)
#  formation_done_name_3       :string(32)
#  formation_done_name_4       :string(32)
#  formation_done_name_5       :string(32)
#  formation_done_duration_1   :string(32)
#  formation_done_duration_2   :string(32)
#  formation_done_duration_3   :string(32)
#  formation_done_duration_4   :string(32)
#  formation_done_duration_5   :string(32)
#  formation_done_entity_1     :string(32)
#  formation_done_entity_2     :string(32)
#  formation_done_entity_3     :string(32)
#  formation_done_entity_4     :string(32)
#  formation_done_entity_5     :string(32)
#  formation_done_amount_1     :string(32)
#  formation_done_amount_2     :string(32)
#  formation_done_amount_3     :string(32)
#  formation_done_amount_4     :string(32)
#  formation_done_amount_5     :string(32)
#  formation_done_evaluation_1 :string(32)
#  formation_done_evaluation_2 :string(32)
#  formation_done_evaluation_3 :string(32)
#  formation_done_evaluation_4 :string(32)
#  formation_done_evaluation_5 :string(32)
#  formation_week              :string(8)
#  formation_week_desc         :text
#  formation_paid_company      :string(16)
#  formation_paid_grant        :string(16)
#  formation_paid_client       :string(16)
#  formation_paid_not          :string(16)
#  formation_part              :string(8)
#  form_access_money           :string(255)
#  form_access_offer           :string(255)
#  form_access_info            :string(255)
#  form_access_time            :string(255)
#  form_access_geo             :string(255)
#  form_access_desc            :text
#  formation_love              :text
#  created_at                  :datetime
#  updated_at                  :datetime
#

