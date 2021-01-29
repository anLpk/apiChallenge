require 'open-uri'
require 'json'

class OrdersController < ApplicationController
  def show
  end

  class RealHubApiKey
    include HTTParty

    BASE_URL = "https://app.realhublive.com/api/v2"
    API_PARTIAL_URL = "api-key=#{ENV["realHub_API_KEY"]}"
    
    def response
      request = HTTParty.get(BASE_URL+"campaigns.json"+API_PARTIAL_URL).to_json
      @request_hash = JSON.parse(request)
    end
  end
end
