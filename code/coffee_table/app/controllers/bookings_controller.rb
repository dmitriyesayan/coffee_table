require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class BookingsController < ApplicationController

  def create
    booking = Booking.new
    booking.user = current_user
    booking.coffee_chat = CoffeeChat.find(params[:coffee_chat].to_i)
    booking.start = booking.coffee_chat.start
    booking.end = booking.coffee_chat.end
    if (params[:topic] != "") && Topic.find_by("topic_name ILIKE ?", params[:topic]) != nil
      booking.topic = Topic.find_by("topic_name ILIKE ?", params[:topic])
    else
      booking.topic = booking.coffee_chat.user.topics[0]
    end
    if booking.save
      booking.coffee_chat.update(availability: false)

      http = Net::HTTP.new(URI("https://api.daily.co/v1/rooms").host, URI("https://api.daily.co/v1/rooms").port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Post.new(URI("https://api.daily.co/v1/rooms"))
      request["content-type"] = 'application/json'
      request["Authorization"] = 'Bearer 48bed1ab8baee181ddb45a71737471a15c306e2ced7e95d1b51a0398dcc5073c'
      random_number = rand(10 ** 10)
      if random_number
        request.body = "{\"name\":\"#{random_number}\",\"properties\":{\"max_participants\":2,\"autojoin\":false,\"enable_knocking\":true,\"enable_screenshare\":true,\"enable_chat\":true,\"start_video_off\":false,\"start_audio_off\":false}}"
      else
        request.body = "{\"properties\":{\"max_participants\":2,\"autojoin\":false,\"enable_knocking\":true,\"enable_screenshare\":true,\"enable_chat\":true,\"start_video_off\":false,\"start_audio_off\":false}}"
      end
      response = http.request(request)
      puts response.read_body
      link = JSON.parse(response.body)["url"]
      booking.video_link = link
      booking.save
      redirect_to booking_path(booking)
    else
      raise
    end
  end

  def show
    @booking = Booking.find(params[:id].to_i)
    @message = Message.new

    @start_session_link = @booking.video_link
  end

  def destroy
    booking = Booking.find(params[:id])
    coffee_chat = booking.coffee_chat
    booking.destroy
    coffee_chat.update(availability: true)
    redirect_to dashboard_path
  end

  def create_room(name)
    http = Net::HTTP.new(URI("https://api.daily.co/v1/rooms").host, URI("https://api.daily.co/v1/rooms").port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(URI("https://api.daily.co/v1/rooms"))
    request["content-type"] = 'application/json'
    request["Authorization"] = 'Bearer 48bed1ab8baee181ddb45a71737471a15c306e2ced7e95d1b51a0398dcc5073c'
    if name
        request.body = "{\"name\":\"#{name}\",\"properties\":{\"max_participants\":2,\"autojoin\":false,\"enable_knocking\":true,\"enable_screenshare\":true,\"enable_chat\":true,\"start_video_off\":false,\"start_audio_off\":false}}"
    else
        request.body = "{\"properties\":{\"max_participants\":2,\"autojoin\":false,\"enable_knocking\":true,\"enable_screenshare\":true,\"enable_chat\":true,\"start_video_off\":false,\"start_audio_off\":false}}"
    end
    response = http.request(request)
    puts response.read_body
    JSON.parse(response.body)["url"]
  end
end
