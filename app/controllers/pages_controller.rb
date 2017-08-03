class PagesController < ApplicationController
  before_action :get_category,except: ['contacts']
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
  
  def render_page
    render 'index.html.erb'
  end
  
  def get_category
    @category = Category.find_by :title => params[:action]
    if params[:sub_category]
      @category = @category.categories.find_by(:title => params[:category]).categories.find_by(:title => params[:sub_category])
    elsif params[:category]
      @category = @category.categories.find_by(:title => params[:category])  
    end
  end
end
