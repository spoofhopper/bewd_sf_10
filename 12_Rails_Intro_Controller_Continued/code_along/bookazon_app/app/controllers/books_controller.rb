class BooksController < ApplicationController

  #READ: this will retrieve all books thru active_record
  def index
    @books = Book.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
  end
end
