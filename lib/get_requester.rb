require 'open-uri'
require 'pry'
require 'json'
require 'net/http'

attr_accessor :url

class GetRequester
  def intialize(url)
    @url = url
  end

def get_response_body
uri = URI.parse(self)
response = Net::HTTP.get_response(uri)
response.body
end

def parse_json
    json_parse = JSON.parse(get_response_body)
end

end
