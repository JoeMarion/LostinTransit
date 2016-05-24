class TopicsController < ApplicationController
  before_action :get_forum, only: [:new, :create]
  def index
    @topics = Topic.where(forum_id: params[:forum_id]).order("created_at DESC")
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @forum.topics.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def get_forum
      @forum = Forum.find(params[:forum_id])
    end

end
