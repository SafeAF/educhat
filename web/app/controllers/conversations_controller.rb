class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show]

  def show
    if @conversation.nil?
      redirect_to root_path, alert: "Conversation not found."
    end
  end

  private

  def set_conversation
    @conversation = Conversation.find_by(id: params[:id])
  end
end
