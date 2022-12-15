class RoomsController < ApplicationController
  def index
    @room = Room.new
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)

    render 'index'
  end

  def create
    @room = Room.create(name: params[:name])
 end

  def show
    @single_room = Room.find(params[:id])

    @room = Room.new
    @rooms = Room.public_rooms

    @users = User.all_except(current_user)

    @message = Message.new
    

    render 'index'
  end

  def new
  end
end
