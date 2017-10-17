class ReviewsController < ApplicationController
  def index
    if params[:filter]
      @filter_params = filter_reviews_params
      @reviews = Review.where(@filter_params)
    else
    @reviews = Review.all
    end
  end
    
    private
  
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
