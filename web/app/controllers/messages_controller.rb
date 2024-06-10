# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.create(message_params.merge(user: current_user))

    # Call your LLM API here and create a response message
    response = call_llm_api(@message.content)
    @conversation.messages.create(content: response, user: BotUser.instance) # Assuming BotUser is a singleton user for bot responses

    redirect_to @conversation
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def call_llm_api(content)
    # Your API call logic here
  end
end
