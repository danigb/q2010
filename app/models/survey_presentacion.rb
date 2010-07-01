class SurveyPresentacion < ActiveRecord::Base
  AMBITOS =  [:actividad_arquitectura, :actividad_plasticas, :actividad_cine, :actividad_comic,
        :actividad_danza, :actividad_diseño, :actividad_docencia, :actividad_fotografia, :actividad_gestion,
        :actividad_literatura, :actividad_musica, :actividad_programacion, :actividad_netart,
        :actividad_performance, :actividad_street, :actividad_teatro, :actividad_otros
      ]
end
