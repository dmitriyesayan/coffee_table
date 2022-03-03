class MessagesController < ApplicationController
  def create
    @booking = Booking.find(params[:id])
    @message = Message.new(message_params)
    @message.booking = @booking
    @message.user = current_user
    @message.save
    BookingChannel.broadcast_to(
      @booking,
      render_to_string(partial: "message", locals: { message: @message })
    )
    redirect_to expert_booking_path(@booking, anchor: "message-#{@message.id}")
  end

  def show
  end

  private

  def message_params
    params.require(:message).permit(:message)
  end

end
