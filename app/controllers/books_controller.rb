class BooksController < ApplicationController
  before_action :get_book_by_id, only: [:show, :edit, :update]
  before_action :get_all_authors, only: [:new, :edit]
  
  # def index ; end
  def index
    @books = Book.all
  end

  def show ; end

  def new
    @book = Book.new
  end

  def create
    book = Book.new book_params
    if book.save
      redirect_to book_path(book)
    else
      redirect_to new_book_path
    end
  end

  def edit ; end

  def update
    if @book.update book_params
      redirect_to book_path(@book)
    else
      redirect_to edit_book_path(@book), alert: @book.errors.full_messages
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :year_of_publication, :author_id)
    end

    def get_book_by_id
      @book = Book.find params['id']
    end

    def get_all_authors
      @authors = Author.all
    end
end