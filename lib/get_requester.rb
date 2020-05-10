require 'open-uri'
require 'pry'
require 'jsdon'
require 'net/http'

attr_accessor :url
class GetRequester
  def intialize(url)
    @url = url

  end

end 
