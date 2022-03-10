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

<<<<<<< HEAD
=======
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

>>>>>>> 3d52dc1cce3f32113ee51382ad67eeb086662cb6
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
    params[:start, :end]
  end
<<<<<<< HEAD
=======

>>>>>>> 3d52dc1cce3f32113ee51382ad67eeb086662cb6
end
