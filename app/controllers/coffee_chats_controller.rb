class CoffeeChatsController < ApplicationController
  def index
    @coffee_chats = CoffeeChat.all
  end

  def new
    @coffee_chat = CoffeeChat.new
  end

  def create
    coffee_chat_params.each do |param|
      duration = (param[:end] - param[:start])*24*60.to_f
      if duration == 30
        @coffee_chat = CoffeeChat.new(param)
        @coffee_chat.user = current_user
        @coffee_chat.availability = true
        unless @coffee_chat.save
          raise
        end
      elsif duration > 30
        slot_number = (duration/30).floor
        @coffee_chat = CoffeeChat.new(param)
        start_time = @coffee_chat.start
        slot_number.times do
          @coffee_chat = CoffeeChat.new
          @coffee_chat.start = start_time
          @coffee_chat.end = @coffee_chat.start + 30*60
          @coffee_chat.user = current_user
          @coffee_chat.availability = true
          unless @coffee_chat.save
            raise
          end
          start_time += 30
        end
      else
        raise
      end

    end
    redirect_to dashboard_path
  end

  def update
  end

  def destroy
    @coffee_chat = CoffeeChat.find(params["format"].to_i)
    @coffee_chat.destroy
    redirect_to dashboard_path
  end

  def show
  end

  private

  def coffee_chat_params
    coffee_chat_param_array = []
    date_range = params["date_range"].split(",")
    array = []
    date_range.each do |date|
      param_hash = {
      start: DateTime.new(date.split("-")[0].to_i,date.split("-")[1].to_i,date.split("-")[2].to_i,params["start_time"].split(":")[0].to_i,params["start_time"].split(":")[1].to_i,0),
      end: DateTime.new(date.split("-")[0].to_i,date.split("-")[1].to_i,date.split("-")[2].to_i,params["end_time"].split(":")[0].to_i,params["end_time"].split(":")[1].to_i,0)
    }
    array << param_hash
    end
    array
  end
end
