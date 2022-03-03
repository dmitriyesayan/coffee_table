class PagesController < ApplicationController

  def home
    topics = Topic.all
    topics_expert = ExpertTopic.all
    topics_expert.map { |i| i.topic }
    @topic_with_expert = []
    for topic in topics do
      if topic.id in topics_expert
      @topic_with_expert << topic
      end
    end
  end

  def dashboard
    @bookings = current_user.bookings
    @upcoming_bookings = @bookings.select do |booking|
      booking.start > DateTime.now
    end
    @completed_bookings = @bookings.select do |booking|
      booking.end < DateTime.now
    end
  end

  def confirmation
  end

  def profile
    @user = current_user
  end

  def become_an_expert
  end

  def about_us
  end

end
