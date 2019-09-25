class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to user_path(current_user.id)
  end

  def edit
    @book = Book.find()
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
