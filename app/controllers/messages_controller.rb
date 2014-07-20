class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      @message.send_it
      redirect_to messages_path, notice: "Your message to #{@message.recipient.username} has been sent!"
    else
      render :new
    end
  end

  def index
    @messages = Message.limit(10)
  end

  protected
  def message_params
    params.require(:message).permit(:sender_id, :recipient_id, :body, :media_url)
  end
end
