# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(page_title, options = {})
    options = {:show => true, :tag => 'h1'}.update(options)
    content_for(:title) { page_title }
    options[:show] ? content_tag(options[:tag], page_title) : ''
  end



  def user_surveys(user)
    render :partial => 'user/surveys', :locals => {:user => user}
  end

  def empty_label
    "<label>&nbsp;</label>"
  end

  def cuestionario_nav(name)
    path = url_for(:controller => "survey_#{name}s", :action => 'edit')
    label = t("layouts.basic.#{name}")
    current_page?(path) ? "<span>#{label}</span>" : link_to(label, path)
  end


end
