module SurveyHelper
  def save_or_preview_survey(form)
    current_user ?  save_survey_tag(form) : render('surveys/preview')
  end

  def save_survey(form)
    current_user ? save_survey_tag(form) : ''
  end

  def save_survey_tag(form)
    content_tag(:p, form.submit("Guardar") + content_tag(:span,  t(:submit_info)), :class => 'submit')
  end

end
