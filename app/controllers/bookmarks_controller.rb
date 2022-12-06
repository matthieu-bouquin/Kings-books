class BookmarksController < ApplicationController
    
  def index
    @bookmark = Bookmark.all
  end
  
  def show 
    @bookmark = Bookmark.find(params[:id])
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
