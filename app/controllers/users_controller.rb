class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  end
  
  
  def index
  @users = User.all
  @book = Book.new
  @user = User.find(current_user.id)
  end

  def edit
  end
  
  
  
  def update
  end
  
  private
  
  def user_params 
  params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
