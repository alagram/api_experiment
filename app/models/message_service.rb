require 'net/http'

class MessageService
  def self.get_message
    uri = URI("https://api.github.com/zen")
    response = Net::HTTP.get(uri)

    response
  end
end
