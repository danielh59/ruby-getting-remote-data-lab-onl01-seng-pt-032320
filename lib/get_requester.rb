require 'open-uri'
require 'pry'
require 'json'
require 'net/http'



class GetRequester
 attr_accessor :url

  def initialize(url)
    @url = url
  end

def get_response_body
uri = URI.parse(@url)
response = Net::HTTP.get_response(uri)
response.body
end

def parse_json
    json_parse = JSON.parse(self.get_response_body)
    # json_parse.collect do |info|
    json_parse
end
end

birk = GetRequester.new(https://www.birkenstock.com/us/?gclid=Cj0KCQjwzN71BRCOARIsAF8pjfgb1qkTtTh8vjZOeAhmfMnvU6grMAv9x_9fY_BR2s3yKbI38F3v6sYaAv8xEALw_wcB)
birk.parse_json