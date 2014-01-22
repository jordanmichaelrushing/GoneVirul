class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :stories
  
  def stories
    @blogs = Blog.order("created_at DESC").page(params[:page]).per_page(15)
    @blogssidebar = Blog.order("created_at DESC").page(params[:page]).limit(10)
  end
end
