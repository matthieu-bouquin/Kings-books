class BookmarksController < ApplicationController
    
  def index
    @bookmark = Bookmark.all
  end
  
  def show 
    @bookmark = Bookmark.find_by(id: current_user.id)
  end

  def edit
  end

  def update
    @form = params[:bookmark]
    @current_page = @form[:current_page]
    @book = Book.find(params[:id])
    if Bookmark.find_by(id: current_user.id)
      @bookmark = Bookmark.find_by(id: current_user.id)
      @bookmark.current_page = @current_page
      @bookmark.name = @book.name
      @bookmark.save
    else
      @bookmark = Bookmark.new()
      @bookmark.name = @book.name
      @bookmark.current_page = @current_page
      @bookmark.book_id = @book.id
      @bookmark.user_id = current_user.id
      @bookmark.save
    end
    redirect_back fallback_location: root_path, success: "Ton marque page a été enregristré à la page  #{@current_page}"
  end
  def new
  end

  def create
  end

  def destroy
  end
  private
  def paramsClean
    params.require(:bookmark).permit(:current_page)
  end
end
