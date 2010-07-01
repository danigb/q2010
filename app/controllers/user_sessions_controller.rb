class UserSessionsController < ApplicationController
  inherit_resources
  actions :new, :create, :destroy

  def create
    create!(:notice => "Bienvenidx") { survey_path }
  end
end
