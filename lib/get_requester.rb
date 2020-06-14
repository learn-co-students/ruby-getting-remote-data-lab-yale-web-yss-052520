# Write your code here
# require "httparty"
require 'json'
require 'net/http'
require 'open-uri'
require 'awesome_print'

class GetRequester
    attr_accessor :url

    # @response = HTTParty.get("@url")

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
        # @response.body
    end

    def parse_json
        return JSON.parse(get_response_body).uniq
    end
end


