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
  end

  def create
  end
end
