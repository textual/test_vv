require 'httparty'
require 'json'

class Pricing
  include HTTParty
  
  def self.request(name, artist)
    base_uri 'http://chadfowler.com:9090'
    JSON.parse(post("/pricing", :body => [{'name' => name, 'artist' => artist}].to_json).body)
  end
end