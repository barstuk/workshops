class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]

#IMHO user should create only one review per product, but there was not such an issue.

  expose(:review)
  expose(:product)
  expose(:category)

  def edit
  end

  def new
  end

  def create
    self.review = Review.new(review_params)
    review.user = current_user
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
