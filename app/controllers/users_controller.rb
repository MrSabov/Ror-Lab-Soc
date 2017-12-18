class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  	@user_posts = @user.posts
  end

   def index
    @users = User.all
  end

end
