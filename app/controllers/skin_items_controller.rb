class SkinItemsController < ApplicationController
before_action :authenticate_user!, only: [:show]
  def index
  	@skin_items = SkinItem.all
  end

  def show
  	@skin_item = SkinItem.find(params[:id])
  	@review = Review.new
  end
end
