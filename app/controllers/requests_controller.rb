class RequestsController < ApplicationController
  def index
  end

  def show
    @single_room = Room.find(params[:id])
  end

  def new
  end

  def edit
  end
end
