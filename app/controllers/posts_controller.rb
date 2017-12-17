class PostsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_post, only: [:show, :destroy, :edit, :update]

  def index
    @posts = Post.paginate(page: params[:page], per_page: 5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
    redirect_to @post
    else
    render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
     params.require(:post).permit(:user_id, :title, :summary, :body, :image, :all_tags, :category_id)
  end


end