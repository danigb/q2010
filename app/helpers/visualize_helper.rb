module VisualizeHelper
  class VisualizeFor < BlockHelpers::Base
    def initialize(survey)
      @survey = survey
    end

    def file_field(field)
    end

    def label(name, algo = '', options = {})
      value = @survey.class.human_attribute_name(name)
      content_tag(:label, value, options)
    end


    def text_field(name, options = {})
      value = value_of(name)
      "<span class='answer text_field'>#{value}</span>"
    end

    def text_area(name, options = {})
      lines = ""
      value_of(name).each {|l| lines = lines + l + '<br/>'}
      "<span class='answer text_area'>#{lines}</span>"
    end


    def radio_button(name, input_value)
      value = @survey.send(name)
      if value.to_s == input_value.to_s
        "<img alt='radio-on' src='/images/radio_on.png' />"
      else
        "<img alt='radio-off' src='/images/radio_off.png'/>"
      end
    end

    def check_box(name, options = {})
      value = @survey.send(name)
      if value 
        "<img alt='check-on' src='/images/check_on.png' />"
      else
        "<img alt='check-off' src='/images/check_off.png' />"
      end
    end

    private
    def value_of(name)
      value = @survey.send(name)
      value = value.blank? ? '(Sin contestar)' : value
      ERB::Util::h value
    end
  end
end
