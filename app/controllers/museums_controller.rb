require 'json'
require 'open-uri'

class MuseumsController < ApplicationController
  def index
    # url = 'https://api.mapbox.com/geocoding/v5/mapbox.places/museums.json?proximity=13.43761,52.494857&access_token=pk.eyJ1IjoiamNoZXcxMjM0IiwiYSI6ImNrczBmemxuNDFqbTEybnFqdmhwMjc2ejIifQ.wxKpla_6lDc31DirutV2Uw'
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museums.json?proximity=13.43761,52.494857&access_token=#{ENV['MAPBOX_API_KEY']}"

    @address = URI.open(url).read
    @address_parsed = JSON.parse(@address)
    # raise
    # puts address_parsed
  end
end
