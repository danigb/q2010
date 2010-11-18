class SurveyPresentacion < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>"}
  AMBITOS =  [:actividad_arquitectura, :actividad_plasticas, :actividad_cine, :actividad_comic,
        :actividad_danza, :actividad_diseno, :actividad_docencia, :actividad_fotografia, :actividad_gestion,
        :actividad_literatura, :actividad_musica, :actividad_programacion, :actividad_netart,
        :actividad_performance, :actividad_street, :actividad_teatro, :actividad_otros
      ]
end

# == Schema Information
#
# Table name: survey_presentacions
#
#  id                              :integer(4)      not null, primary key
#  user_id                         :integer(4)
#  name                            :string(256)
#  page_url                        :string(256)
#  icon                            :string(16)
#  location                        :string(256)
#  indi_colective                  :string(16)
#  activity_actividad_arquitectura :boolean(1)      default(FALSE)
#  actividad_arquitectura          :string(256)
#  activity_actividad_plasticas    :boolean(1)      default(FALSE)
#  actividad_plasticas             :string(256)
#  activity_actividad_cine         :boolean(1)      default(FALSE)
#  actividad_cine                  :string(256)
#  activity_actividad_comic        :boolean(1)      default(FALSE)
#  actividad_comic                 :string(256)
#  activity_actividad_danza        :boolean(1)      default(FALSE)
#  actividad_danza                 :string(256)
#  activity_actividad_diseño      :boolean(1)      default(FALSE)
#  actividad_diseño               :string(256)
#  activity_actividad_docencia     :boolean(1)      default(FALSE)
#  actividad_docencia              :string(256)
#  activity_actividad_fotografia   :boolean(1)      default(FALSE)
#  actividad_fotografia            :string(256)
#  activity_actividad_gestion      :boolean(1)      default(FALSE)
#  actividad_gestion               :string(256)
#  activity_actividad_literatura   :boolean(1)      default(FALSE)
#  actividad_literatura            :string(256)
#  activity_actividad_musica       :boolean(1)      default(FALSE)
#  actividad_musica                :string(256)
#  activity_actividad_programacion :boolean(1)      default(FALSE)
#  actividad_programacion          :string(256)
#  activity_actividad_netart       :boolean(1)      default(FALSE)
#  actividad_netart                :string(256)
#  activity_actividad_performance  :boolean(1)      default(FALSE)
#  actividad_performance           :string(256)
#  activity_actividad_street       :boolean(1)      default(FALSE)
#  actividad_street                :string(256)
#  activity_actividad_teatro       :boolean(1)      default(FALSE)
#  actividad_teatro                :string(256)
#  activity_actividad_otros        :boolean(1)      default(FALSE)
#  actividad_otros                 :string(256)
#  interest                        :string(1024)
#  created_at                      :datetime
#  updated_at                      :datetime
#

