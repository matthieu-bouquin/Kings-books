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
    @bookmark = Bookmark.find_by(id: current_user.id)
    @book = Book.find(params[:id])
    @bookmark.current_page = @current_page
    @bookmark.name = @book.name
    @bookmark.save
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
