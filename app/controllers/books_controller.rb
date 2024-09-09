class BooksController < ApplicationController
  
  # def index ; end
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params['id']
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    book = Book.new book_params
    if book.save
      redirect_to book_path(book)
      # redirect_to book
    else
      redirect_to new_book_path
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :year_of_publication, :author_id)
    end
end