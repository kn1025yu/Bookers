class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
   book = Book.new(book_params[:id])
   book.save
   redirect_to book_path
  end

  def edit
  end

private
  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
