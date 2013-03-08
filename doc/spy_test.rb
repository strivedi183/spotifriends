require 'httparty'
require 'json'
require 'pry'

print 'Search for?'
query = gets.chomp


def fetch_data(query)
  HTTParty.get("http://ws.spotify.com/search/1/track.json?q=#{query}")
end

def open_spotify
   @a = HTTParty.get("http://open.spotify.com/track/0msrDPXxZpts4FRnoX0bFr")
end

fetch_data(query)

binding.pry