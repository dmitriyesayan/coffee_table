class ReviewsController < ApplicationController
  def new
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = params[:id]
    if @review.save
      redirect_to dashboard_path
    else
      raise
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
