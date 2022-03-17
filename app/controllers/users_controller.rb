class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      sql_query = "topic_name ILIKE :query"
      topic = Topic.where(sql_query, query: "%#{params[:query]}%")[0]
      @experts = topic.users
    else
      @experts = User.where(expert_profile: true)
    end
  end

  def show
    @expert = User.find(params[:id])
      # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @coffee_chats = CoffeeChat.where(start: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week, availability: true)
  end

  def become_expert
    current_user.update(expert_profile: true)
    current_user.save
    redirect_to profile_path
  end

end
