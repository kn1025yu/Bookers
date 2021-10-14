class HomesController < ApplicationController
   def index
    @books = Book.all
    @books = Book.new
   end

  def show
    @books = Book.find(params[:id])
  end

  def create
   @book = Book.new(book_params[:id])
   book.save
   redirect_to book_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

private
  def book_params
    params.permit(:title, :body)
  end

end
