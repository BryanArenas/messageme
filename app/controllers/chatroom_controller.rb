class ChatroomController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @message = Message.new
    @messages = Message.custom_display
  end

end
