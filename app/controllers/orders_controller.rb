require 'json'
class OrdersController < ApplicationController
  URL = "https://app.realhublive.com/api/v2/"
  def show
    @agencies = agencies_name
    @campaigns = campaing_address
    @orders = order_items
  end

  private
  def agencies_name
    response = RestClient.get(URL + "agencies.json?", {"x-api-token".to_sym => ENV["API_KEY"]})
    JSON.parse(response)
  end

  def campaing_address
    response = RestClient.get(URL + "campaigns/", {"x-api-token".to_sym => ENV["API_KEY"]})
    JSON.parse(response)
  end

  def order_items
    response = RestClient.get(URL + "orders.json", {"x-api-token".to_sym => ENV["API_KEY"]})
    JSON.parse(response)
  end
end
