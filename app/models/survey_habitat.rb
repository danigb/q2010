class SurveyHabitat < ActiveRecord::Base
  HABITATS = [:suburb, :center, :city, :village]
  CULTURE_INFRA = [:cinema, :concert, :theater, :biblio, :exhibition, :space, :museum, :internet, :social]
  HOMES = [:property, :rent, :cession]
  LIVING = [:alone, :family, :share]
  HOME_COST = [:less100, :from100to200, :from200to300, :from300to400, :from400to500, :from500to600,  :from600to700, :more700]
  STUDIO = [:studio_home, :studio_rent, :studio_cession, :studio_company]
  EXPENSES = [:promotion, :telecom, :formation, :mobility, :material]
  TRAVEL = [:never, :sometimes, :usually, :must]
end

# == Schema Information
#
# Table name: survey_habitats
#
#  id                       :integer(4)      not null, primary key
#  user_id                  :integer(4)
#  place                    :string(32)
#  place_desc               :text
#  city_work                :text
#  culture_infra_cinema     :boolean(1)      default(FALSE)
#  culture_infra_concert    :boolean(1)      default(FALSE)
#  culture_infra_theater    :boolean(1)      default(FALSE)
#  culture_infra_biblio     :boolean(1)      default(FALSE)
#  culture_infra_exhibition :boolean(1)      default(FALSE)
#  culture_infra_space      :boolean(1)      default(FALSE)
#  culture_infra_museum     :boolean(1)      default(FALSE)
#  culture_infra_internet   :boolean(1)      default(FALSE)
#  culture_infra_social     :boolean(1)      default(FALSE)
#  culture_infra_work       :text
#  homes                    :string(32)
#  living                   :string(32)
#  living_desc              :text
#  living_share             :text
#  home_cost                :string(32)
#  studio                   :string(32)
#  studio_other             :text
#  studio_share             :string(32)
#  studio_share_desc        :text
#  studio_cost              :string(32)
#  promotion                :string(512)
#  telecom                  :string(512)
#  formation                :string(512)
#  mobility                 :string(512)
#  material                 :string(512)
#  travel                   :string(32)
#  income                   :string(32)
#  created_at               :datetime
#  updated_at               :datetime
#

