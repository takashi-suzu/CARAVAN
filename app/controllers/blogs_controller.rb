class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def new
  	@blog = Blog.new
  end

  def create
  	blog = Blog.new
  	blog.save
  	redirect_to blogs_path(blog.id)
  end

  def edit
  end


  private

  def blog_params
  	params_require(:blog).permit(:title, :category, :body)
  end

end
