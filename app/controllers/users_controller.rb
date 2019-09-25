class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books =@user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end