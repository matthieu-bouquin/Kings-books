class MybookmarksController < ApplicationController
      
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
    if Bookmark.where(user_id: current_user.id, name: @book.name).exists?
      @bookmark = Bookmark.where(user_id: current_user.id, name: @book.name)
      @bookmark.each do |bookmark|
      bookmark.current_page = @current_page
      bookmark.name = @book.name
      bookmark.save
      end
      redirect_back fallback_location: root_path, success: "Your bookmark on the book '#{@book.name}' has been recorded on page

      #{@current_page}"
    else
      @bookmark = Bookmark.create(name: @book.name,current_page: @current_page, book_id: @book.id, user_id: current_user.id )
      redirect_back fallback_location: root_path, success: "Your bookmark on the book  #{@current_page}"
    end
  end
  def new
  end

  def create
  end

  def destroy
    p params
    @id = params[:id]
    p @id
    @bookmark = Bookmark.find_by(id: @id)
    @bookmark.destroy
    
    redirect_to mybookmarks_path, success: "Bookmark deleted successfully"
  end
  private
  def paramsClean
    params.require(:bookmark).permit(:current_page)
  end
end

