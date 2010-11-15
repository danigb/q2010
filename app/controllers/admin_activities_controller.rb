class AdminActivitiesController < AdminController
  inherit_resources
  defaults :resource_class => Activity, :collection_name => 'activities', :instance_name => 'activity'

  def limpiar
    Activity.destroy_all
    redirect_to admin_activities_path
  end
end
