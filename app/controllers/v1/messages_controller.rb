module V1
  class MessagesController < ApplicationController
    def index
      @messages = Message.all
      render json: { message: @messages[rand(@messages.length)].name }
    end
  end
end
