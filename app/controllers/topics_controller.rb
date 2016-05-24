class TopicsController < ApplicationController
  def index
    @topics = Topic.where(forum_id: params[:forum_id])
  end
end
