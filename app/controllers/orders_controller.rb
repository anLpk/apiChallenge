require 'json'

class OrdersController < ApplicationController
  def show
    @orders = get_data
    raise
  end

    
  private
  def get_data
    url = "https://app.realhublive.com/api/v2/"
    response = RestClient.get(url + "orders.json?include_order_items=true", {"x-api-token".to_sym => ENV["API_KEY"]})
    JSON.parse(response)
  end
end
