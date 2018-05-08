class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def create

    @booking = Booking.find(params[:booking_id])
    @owner = @booking.car.user
    @guest = @booking.user

    exists = false
    conversation = nil

    if Conversation.where(sender_id: params[:sender_id]).first != nil
      Conversation.where(sender_id: params[:sender_id]).each do |convo|
        if convo.recipient_id == params[:recipient_id].to_i
          exists = true
          conversation = convo

        end
      end
    end

    if Conversation.where(sender_id: params[:recipient_id]).first != nil
      Conversation.where(sender_id: params[:recipient_id]).each do |convo|
        if convo.recipient_id == params[:sender_id].to_i
          exists = true
          conversation = convo
        end
      end
    end

    if exists == false

      @conversation = Conversation.create(conversation_params)
    else
      @conversation = conversation
    end
      redirect_to conversation_messages_path(@conversation)
  end

private
  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end

end
