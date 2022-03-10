class CoffeeChatsController < ApplicationController
  def index
  end

  def create
    coffee_chat_params.each do |param|
      @coffee_chat = CoffeeChat.new(param)
      @coffee_chat.user = current_user
      @coffee_chat.availability = true
      unless @coffee_chat.save
        raise
      end
    end
    redirect_to dashboard_path
  end

  def update
  end

  def destroy
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
