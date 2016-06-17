class ReviewsController < ApplicationController
  def create
    @review = Review.new  review_params
    @product = Product.find params[:product_id]
    @review.product = @product
    @review.user = current_user
    if @review.save
      redirect_to product_path(@product), notice: "Review saved"
    else
      render "/products/show"
    end
  end

  def destroy
    product = Product.find params[:product_id]
    review = Review.find params[:id]
    review.destroy
    redirect_to product_path(product), notice: "Review deleted!"
  end

  def review_params
    params.require(:review).permit(:body, :star)
  end
end
