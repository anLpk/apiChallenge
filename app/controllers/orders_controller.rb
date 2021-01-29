require 'open-uri'
require 'json'

class OrdersController < ApplicationController
  def show
  end

  private
  class RealHubApiKey
    BASE_URL = "https://app.realhublive.com/api/v2"
    API_PARTIAL_URL = "api-key=#{ENV["realHub_API_KEY"]}"
  end
end
