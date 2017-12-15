class PreviewsController < ApplicationController

  before_action :set_preview, only: [:show, :destroy, :edit, :update]

  def index
    @previews = Preview.all
  end

  def new
    @preview = Preview.new
  end

  def create
    @preview = Preview.new(preview_params)
    if @preview.save
      redirect_to @preview
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @preview.update(preview_params)
    redirect_to @preview
  end

  def destroy
    @preview.destroy
    redirect_to posts_path
  end

  private

  def set_preview
    @preview = Preview.find(params[:id])
  end

  def preview_params
    params.require(:preview).permit(:title, :summary, :body, :image)
  end


end