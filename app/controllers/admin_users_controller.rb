class AdminUsersController < AdminController
  inherit_resources
  defaults :resource_class => User, :collection_name => 'users', :instance_name => 'user'

  def update
    update! { admin_user_path(@user)}
  end
end
