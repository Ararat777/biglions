class PagesController < ApplicationController
  
  before_action :get_category
  
  def main
    
    @pages = @category.pages
    
    render_page
  end
  
  def about
    @pages = @category.pages
    
    render_page
  end
  
  def contacts
  end
  
  def services
    @pages = @category.pages
    render_page
  end
  private
  
  def not_found
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
  
  def render_page
    if mobile_device?
      if @category.title == 'main'
        render "main_mobile.html.erb"
      else
        render "index_mobile.html.erb"
      end
    else
      render 'index.html.erb'
    end
  end
  
  
end
