class RoomsPersonalController < ApplicationController

  def show
    @messages = Message.all
  end
end
