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

    @user_bookings = Booking.where(user_id: current_user)
    @user_upcoming_bookings = @user_bookings.select do |booking|
      booking.start > DateTime.now
    end
    @user_completed_bookings = @user_bookings.select do |booking|
      booking.end < DateTime.now
    end

    @review = Review.new
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
