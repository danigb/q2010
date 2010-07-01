class AdminActivitiesController < AdminController
  inherit_resources
  defaults :resource_class => Activity, :collection_name => 'activities', :instance_name => 'activity'
end
