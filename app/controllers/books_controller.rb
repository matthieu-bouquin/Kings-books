

class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    @book = Book.all
  end
  
  def show 
    @book = Book.find(params[:id])
    @page = BookPage.find_by(book_id: @book.id)
    if Bookmark.find_by(id: current_user.id)
      @bookmark = Bookmark.find_by(id: current_user.id)
    end
  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
    p "*"*100
    p "update controller"
    p "*"*100
    p params
    p "*"*100
  end
  def new
  end

  def create
  end

  def destroy
  end

end
