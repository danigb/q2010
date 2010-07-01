ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'static_pages', :action => 'whosbehind'
  map.user 'yo', :controller => 'users', :action => 'show'
  map.login "entrar", :controller => "user_sessions", :action => "new"
  map.logout "salir", :controller => "user_sessions", :action => "destroy"

  Survey::CUESTIONARIOS.each do |name|
    map.presentacion "/cuestionario/#{name}", :controller => "survey_#{name}s", :action => 'edit'
    map.resources "survey_#{name}s"
  end

  map.resources :feedbacks, :as => 'comentarios'
  map.resources :users, :as => 'usuarixs'
end
