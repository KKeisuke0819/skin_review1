class ReviewsController < ApplicationController
before_action :authenticate_user!, only: [:create]
  def index
  	@skin_item = SkinItem.find(params[:skin_item_id])
  	@reviews = @skin_item.reviews
  end

  def create
  	@review = Review.new(review_params)
  	@review.user_id = current_user.id
  	if @review.save
  		redirect_to skin_item_reviews_path(@review.skin_item)
  	else
  		@skin_item = SkinItem.find(params[:skin_item_id])
  		render "skin_items/show"
  	end
  end

  private
  def review_params
  	params.require(:review).permit(:skin_item_id, :score, :content)
  end
end
