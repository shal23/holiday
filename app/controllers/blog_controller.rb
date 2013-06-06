class BlogController < ApplicationController

  def index
  	
  	@posts = Post.all
  	@posts = Post.where(:active => true).paginate(:page => params[:page]).order('created_at DESC')
  end
end
