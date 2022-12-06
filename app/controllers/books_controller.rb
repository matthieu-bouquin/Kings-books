class BooksController < ApplicationController
  
  def index
    @book = Book.all
  end
  
  def show 
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end
  def new
  end

  def create
  end

  def destroy
  end
end
