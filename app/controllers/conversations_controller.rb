class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def create


    booking = Booking.find(params[:booking_id])

    # if @guest
    #   sender_id = booking.user
    #   recipient_id = booking.car.user
    # else
    #   sender_id = booking.car.user
    #   recipient_id = booking.user
    # end

    owner_id = booking.car.user.id
    guest_id = booking.user.id


    exists = false
    conversation = nil

    if Conversation.where(sender_id: owner_id).first != nil
      Conversation.where(sender_id: owner_id).each do |convo|
        if convo.recipient_id == guest_id
          exists = true
          conversation = convo

        end
      end
    end

    # if Conversation.where(sender_id: guest_id).first != nil
    #   Conversation.where(sender_id: guest_id).each do |convo|
    #     if convo.recipient_id == owner_id
    #       exists = true
    #       conversation = convo
    #     end
    #   end
    # end

    if exists == false
      @conversation = Conversation.create(sender_id: owner_id, recipient_id: guest_id)
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
