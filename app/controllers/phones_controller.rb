require 'httparty'

class PhonesController < ApplicationController
  def index
    response = HTTParty.get("http://localhost:3000/api/v1/phones")
    @phones = response.parsed_response
  end
end
