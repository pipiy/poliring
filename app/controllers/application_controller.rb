class ApplicationController < ActionController::Base
  protect_from_forgery

  def home
  	@projects = Project.all
    @posts = Post.order('created_at DESC').limit(4).all
  end

  def about_us
  end
end
