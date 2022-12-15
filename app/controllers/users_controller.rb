class UsersController < ApplicationController
  helper_method :status
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def status
    @user.email
   end
end
