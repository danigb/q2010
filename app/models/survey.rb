
class Survey
  CUESTIONARIOS = [:presentacion, :tumisma, :experiencia, :dinero, :autoria,
    :habitat, :red, :comun]

  RELEVANCE = [:none, :some, :lot, :full]

  FREQUENCY = [:never, :sometimes, :usually, :always]

  IMPORTANCE = [:nimp, :few, :important, :very]

  QUALITY = [:very_bad, :bad, :acceptable, :good, :very_good]

  NAMES = {:presentacion => 'Presentación', :tumisma => 'Tu mismx', :experiencia => 'Experiencias',
    :dinero => 'Dineros', :autoria => 'Autoría', :habitat => 'Hábitat', :red => 'Redes', :comun => 'Lo común'  }

  def self.name_of(name)
    NAMES[name.to_sym]
  end
end
