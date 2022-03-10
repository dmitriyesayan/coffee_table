class CoffeeChatsController < ApplicationController
  def index
    @coffee_chats = CoffeeChat.all
  end

  def new
    @coffee_chat = CoffeeChat.new
  end

  def create
    @coffee_chat = CoffeeChat.new(coffee_chat_params).valid?
    raise
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


"start(1i)"=>"2022", "start(2i)"=>"3", "start(3i)"=>"10", "start(4i)"=>"16", "start(5i)"=>"41", "end(1i)"=>"2022", "end(2i)"=>"3", "end(3i)"=>"10", "end(4i)"=>"17", "end(5i)"=>"41", "commit"=>"Save", "controller"=>"coffee_chats", "action"=>"create"} permitted: false>
>>
