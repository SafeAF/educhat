class ConversationChannel < ApplicationCable::Channel
  def subscribed
    # stream from convo channel
    conversation = Conversation.find(params[:conversation_id])
    stream_for conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
