class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :stories
  
  def stories
    @blogs = Blog.order("created_at DESC").page(params[:page]).per_page(10)
    @blogssidebar = Blog.order("created_at DESC").limit(10)
  end
end
