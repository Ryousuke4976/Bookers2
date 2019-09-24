class BooksController < ApplicationController
  def index
  end

  def show
    
  end

  def create
    @book = Book.new(book_prams)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def edit
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
