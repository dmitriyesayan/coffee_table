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
