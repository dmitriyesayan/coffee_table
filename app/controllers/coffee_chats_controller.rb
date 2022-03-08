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

  def update
  end

  def destroy
  end

  def show
  end

  private
  def coffee_chat_params
    params[:start, :end]
  end

end


"start(1i)"=>"2022", "start(2i)"=>"3", "start(3i)"=>"10", "start(4i)"=>"16", "start(5i)"=>"41", "end(1i)"=>"2022", "end(2i)"=>"3", "end(3i)"=>"10", "end(4i)"=>"17", "end(5i)"=>"41", "commit"=>"Save", "controller"=>"coffee_chats", "action"=>"create"} permitted: false>
>>
