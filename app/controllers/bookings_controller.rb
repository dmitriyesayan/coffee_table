class BookingsController < ApplicationController
  def create
  end

  def show
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to dashboard_path
  end
end
