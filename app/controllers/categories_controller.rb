class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end
  
  def show 
    @category = Category.find(params[:id])
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
