class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
    @category = Category.all
    5.times {@post.assets.build}
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    redirect_to posts_path, :notice => 'Your post has been posted!'
    else
    render 'new'
    end
  end

  def edit
  	@post = Post.find(params[:id])
        5.times {@post.assets.build}
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to post_path, :notice => "Your post has been updated"
    else
      render "edit"
    end   
  end

  def show
  	@post = Post.find(params[:id])
    @category = Category.all
    @adminuser = AdminUser.all
    @post_comment = PostComment.new(:post => @post)

  end

  def destroy
  	@post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post has been deleted"
  end

  private

  private
  def post_params
      params.require(:post).permit(:title, :body, :category_id, :author_id, :assets , :image,:assets_attributes [:image])

  end

end
