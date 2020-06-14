require 'net/http'
require 'open-uri'
require 'json'
    
class GetRequester
#   URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
    attr_reader :url
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
    # we use the JSON library to parse the API response into nicely formatted JSON
      programs = JSON.parse(self.get_response_body)
    end

end
