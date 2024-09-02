class BooksController < ApplicationController
  
  # def index ; end
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params['id']
  end
end