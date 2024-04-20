class Api::MessagesController < ApplicationController
  def index
    @messages = Message.all

    render json: @messages, status: :ok
  end

  def create
    @message = Message.new(message_params)

    if @message.save then
      render json: @message, status: :created
      @message.status = :pending
    else
      render json: @message.errors, status: :error
      @message.status = :failed
    end

    def destroy
      @message = Message.where(id: params[:id]).first
      if @message.destroy
        head(:ok)
      else
        head(:unprocessable_entity)
      end
    end

    private

    def message_params
      params.require(:message).permit(:msgId, :textMsg, :scheduleDate, :createDate, :whatsappNumber)
    end
  end
end
