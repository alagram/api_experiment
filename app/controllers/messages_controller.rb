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
    begin
      @message = MessageService.get_message
    rescue => e
      raise e, 'something very bad happend! Please try again in a few minutes.'
    end
  end
end
