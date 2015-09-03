class BooksController < ApplicationController




  def index
    @books = Book.all
    #READ: uses active_record to retrieve all of the books
  end

  def show
  end

  def edit
  end


  def new
  end


  def create

  end

  def update
  end


  def destroy
  end



  private

  def book_params
  end




end
