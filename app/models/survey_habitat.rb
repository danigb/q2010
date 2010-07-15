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
