class MessagesController < ApplicationController
  before_action :message_attributes, only: [:create]
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(message_attributes)
  end

  private

  def message_attributes
    params.require(:message).permit(:content)
  end
end
