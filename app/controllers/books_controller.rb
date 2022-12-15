

class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    @book = Book.all
  end
  
  def show
    p params
    @book = Book.find(params[:id])
    @page = BookPage.find_by(book_id: @book.id)
    if Bookmark.find_by(user_id: current_user.id)
      @bookmark = Bookmark.find_by(user_id: current_user.id, book_id: @book.id)
    end
  end

  def edit
    @book = Book.find(params[:id])

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
