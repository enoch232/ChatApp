class RoomsController < ApplicationController
  def show
  	@messages = Message.all

  end
  def create
  	@message = params[:room][:message]
    @name = params[:room][:name]
  	respond_to do |format|
  		format.html{redirect_to root_path}
  		format.js
  	end
  end
end
