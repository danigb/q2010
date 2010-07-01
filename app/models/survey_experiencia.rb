class SurveyExperiencia < ActiveRecord::Base

  belongs_to :user

  STUDY_CYCLES = [:studies_eso, :studies_bachiller, :studies_fp_medio, :studies_fp_superior,
    :studies_uni_completa, :studies_uni_incompleta, :studies_postgrado, :studies_doctorado]

  STUDIES =  [:academica, :transmision, :talleres, :empleo, :aprendizaje, :internet, :biblioteca]
  FORMATION =  [:name, :duration, :entity, :amount, :evaluation]
  FORMATION_ACCESS =  [:money, :offer, :info, :time, :geo]
end
