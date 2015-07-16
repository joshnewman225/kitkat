require 'net/http'
require 'rexml/document'
require './occasions/casual/casual.rb'
class Outfit
  attr_accessor :zipcode, :sex, :occasion, :temperature, :city, :region, :country, :condition, :temperature
  
  def initialize(zipcode, sex, occasion)
    @zipcode = zipcode
    @sex = sex
    @occasion = occasion
    feed = Net::HTTP.get 'weather.yahooapis.com', "/forecastrss?p=#{zipcode}"
    xml = REXML::Document.new feed
    @city = xml.elements['//yweather:location'].attributes['city']
    @region = xml.elements['//yweather:location'].attributes['region']
    @country = xml.elements['//yweather:location'].attributes['country']
    @condition = xml.elements['//yweather:condition'].attributes['text']
    @temperature = xml.elements['//yweather:condition'].attributes['temp']
    @degrees = xml.elements['//yweather:units'].attributes['temperature']
  end
end

outfit1 = Casual.new
puts outfit1.outfits