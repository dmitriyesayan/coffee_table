class UsersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "topic ILIKE :query OR language ILIKE :query"
      @experts = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @experts = User.where(expert_profile: true)
    end
  end

  def show
    @expert = User.find(params[:id])
      # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @coffee_chats = CoffeeChat.where(start: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def create
  end
end
