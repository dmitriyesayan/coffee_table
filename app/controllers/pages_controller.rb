class PagesController < ApplicationController

  def home
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
  end

  def become_an_expert
  end

  def about_us
  end
end
