class UsersController < ApplicationController
  inherit_resources
  actions :new, :edit, :create, :update

  def create
    create!(:notice => "Gracias por darte de alta") { survey_path }
  end
end
