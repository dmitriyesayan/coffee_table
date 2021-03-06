class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :become_an_expert, :about_us ]

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

    @coffee_chats = CoffeeChat.all

    @user_bookings = Booking.where(user_id: current_user)
    @user_upcoming_bookings = @user_bookings.select do |booking|
      booking.start > DateTime.now
    end
    @user_completed_bookings = @user_bookings.select do |booking|
      booking.end < DateTime.now
    end

    @review = Review.new
    @coffee_chats = current_user.coffee_chats
  end

  def confirmation
  end

  def profile
    @user = current_user

    @learner_bookings = Booking.where(user: current_user).select { |booking| booking.end < DateTime.now}
    @expert_bookings = current_user.bookings.select { |booking| booking.end < DateTime.now}
    @learner_topics = []
    Booking.where(user: current_user).each do | booking |
      unless @learner_topics.include?(booking.topic.topic_name)
        @learner_topics << booking.topic.topic_name
      end
    end

  end

  def become_an_expert
  end

  def about_us
  end

end
