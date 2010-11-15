ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'static_pages', :action => 'whosbehind'
  map.finished '/cuestionario_finalizado', :controller => 'static_pages', :action => 'finished'
  
  map.login "entrar", :controller => "user_sessions", :action => "new"
  map.logout "salir", :controller => "user_sessions", :action => "destroy"

  Survey::CUESTIONARIOS.each do |name|
    map.send("view_survey_#{name}".to_sym, "/cuestionario/#{name}", :controller => "survey_#{name}s", :action => 'edit')
    map.resources "survey_#{name}s", :as => name, :path_prefix => 'explorar'
  end

  map.resource :user, :as => 'usuarix', :controller => 'user'
  map.resources :user_sessions, :as => 'sesion'
  map.resources :feedbacks, :as => 'comentarios'
  map.resources :surveys, :as => 'cuestionarios'

  # admin
  map.admin '/admin', :controller => 'admin_activities'
  map.resources :admin_activities, :as => 'actividad', :path_prefix => 'admin', :controller => 'admin_activities'
  map.resources :admin_users, :as => 'usuarios', :path_prefix => 'admin', :controller => 'admin_users'
  map.resources :admin_feedbacks, :as => 'mensajes', :path_prefix => 'admin', :controller => 'admin_feedbacks'
  map.resources :admin_surveys, :as => 'cuestionarios', :path_prefix => 'admin', :controller => 'admin_surveys'


end
