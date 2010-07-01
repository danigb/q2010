module VisualizeHelper
  class VisualizeFor < BlockHelpers::Base
    def initialize(survey)
      @survey = survey
    end

    def label(name)
      value = @survey.class.human_attribute_name(name)
      "<label>#{value}</label>"
    end

    def text_field(name, options = {})
      value = value_of(name)
      "<span class='answer'>#{value}</span>"
    end

    def text_area(name, options = {})
      lines = ""
      value_of(name).each {|l| lines = lines + l + '<br/>'}
      "<span class='answer'>#{lines}</span>"
    end


    def radio_button(name, input_value)
      value = @survey.send(name)
      value = value == input_value.to_s ? 'x' : '  '
      "<span class='control'>(#{value})</span>"
    end

    def check_box(name, options = {})
      value = @survey.send(name)
      value = value == false ? '  ' : 'x'
      "<span class='control'>[#{value}]</span>"
    end

    private
    def value_of(name)
      value = @survey.send(name)
      value = value.blank? ? '(Sin contestar)' : value
      ERB::Util::h value
    end
  end
end
