<<<<<<< HEAD
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
=======
class BookmarksController < ApplicationController
    
  def index
   
  end
  
  def show 

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
  private
 
end
>>>>>>> 744f54b8d0969b2eeb9be04bec0a0359edefbfa4
