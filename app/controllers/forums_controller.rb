class ForumsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_forum, only: [:show, :edit, :update]

  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = current_user.forums.build(forum_params)
    if @forum.save
      redirect_to @forum
    else
      render :new
    end
  end


  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])
    if @forum.update_attributes(forum_params)
      redirect_to @forum
    else
      render :edit
    end
  end

  def destroy
    pp@forum = Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path
  end

  private

  def forum_params
      params.require(:forum).permit(:title, :body, :image)
  end

  def set_forum
    @forum = Forum.find(params[:id])
  end

end