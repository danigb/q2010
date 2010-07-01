class FeedbacksController < ApplicationController
  layout 'basic'
  inherit_resources
  actions :new, :create

  def create
    create!(:notice => t('feedbacks.created')) { root_path }
    Activity.create(:category => 'message', :description => 'Nos han escrito.', :url => admin_feedback_path(@feedback))
  end
end
