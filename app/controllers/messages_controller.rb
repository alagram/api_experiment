class MessagesController < ApplicationController
  def index
    @results = get_unique_messages
  end

  private

  def get_unique_messages
    messages_collection = Set.new

    until messages_collection.size == 3
      messages_collection.add(message)
    end

    messages_collection.to_a
  end

  def message
    @message = MessageService.get_message
  end
end
