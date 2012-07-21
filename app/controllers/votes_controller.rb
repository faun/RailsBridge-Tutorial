class VotesController < ApplicationController

  def create
    topic = Topic.find(params[:topic_id])
    vote = Vote.new(:topic_id => topic.id)
    vote.save!
    redirect_to(topics_path)
  end
end
