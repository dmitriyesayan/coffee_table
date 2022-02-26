class BookingsController < ApplicationController
  before_action :authenticate_user!
  def create
    booking = Booking.new
    booking.user = current_user
    booking.coffee_chat = CoffeeChat.find(params[:coffee_chat].to_i)
    booking.start = booking.coffee_chat.start
    booking.end = booking.coffee_chat.end
    booking.video_link = "zoom link"
    if booking.save
      booking.coffee_chat.update(availability: false)
      redirect_to booking_path(booking)
    else
      raise
    end
  end

  def show
    @booking = Booking.find(params[:id].to_i)

  end

  def destroy
  end
end
