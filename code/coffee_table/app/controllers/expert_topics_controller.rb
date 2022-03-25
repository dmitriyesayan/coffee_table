class ExpertTopicsController < ApplicationController

  def create
    topic_name = params[:topic_name].capitalize
    if Topic.find_by("topic_name ILIKE ?", topic_name) == nil
      topic = Topic.new({topic_name: topic_name})
    else
      topic = Topic.find_by("topic_name ILIKE ?", topic_name)
    end
    expert_topic = ExpertTopic.new({user: current_user, topic: topic})
    if expert_topic.save
      redirect_to profile_path
    end
  end

  def destroy
    expert_topic = ExpertTopic.find(params[:id])
    expert_topic.destroy
    redirect_to profile_path
  end
end
