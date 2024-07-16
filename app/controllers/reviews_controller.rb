class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @product, notice: 'Review was successfully created.'
    else
      redirect_to @product, alert: 'Unable to add review.'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
