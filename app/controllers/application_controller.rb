class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def mobile_device?
    (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
  end
  def get_category
    @category = Category.find_by(:title => params[:action]) or not_found
    if params[:sub_category]
      @category = @category.categories.find_by(:title => params[:category]).categories.find_by(:title => params[:sub_category]) or not_found
    elsif params[:category]
      @category = @category.categories.find_by(:title => params[:category]) or not_found  
    end
    set_meta_tags title: @category.meta_title,
              description: @category.meta_description,
              keywords: @category.meta_keywords
              
  end
  helper_method :mobile_device?
  helper_method :get_category
end
