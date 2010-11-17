class AdminUsersController < AdminController
  inherit_resources
  defaults :resource_class => User, :collection_name => 'users', :instance_name => 'user'

  def update
    url = params[:next_url] ? params[:next_url] : admin_user_path(@user)
    update! { url }
  end

  def edit
    @user = User.find params[:id]
    @update_url = admin_user_path(@user)
    edit!
  end
end
