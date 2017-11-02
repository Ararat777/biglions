class ReviewsController < ApplicationController
  def index
    if params[:filter]
      @filter_params = filter_reviews_params
      @reviews = Review.where(@filter_params)
    else
    @reviews = Review.all
    end
    
    @review = Review.new
  end
  
  def show
    @review = Review.find(params[:id])
  end
  
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review.id)
    end
  end
    
    private
    def review_params
      params.require(:review).permit(:name,:email,:site,:body)
    end
    def filter_reviews_params
    hh = {}
    params[:filter].each do |k,v|
      if v != ''
      hh[k.to_sym] = v
      end
    end
    hh
  end
end
