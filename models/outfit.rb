require 'net/http'
require 'rexml/document'
require_relative './occasions/casual/casual.rb'
require_relative './occasions/very_fancy/veryfancy.rb'
require_relative './occasions/night_out/nightout.rb'
require_relative './occasions/office_work/officework.rb'

class Outfit
  attr_accessor :zipcode, :sex, :occasion, :temperature, :city, :region, :country, :condition, :temperature, :final_outfit
  
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
    
    if occasion == 'casual'
      outfit1 = Casual.new
    elsif occasion == 'night out'
      outfit1 = Night_Out.new
#    elsif occasion == 'office work'
#      outfit1 = 
#    else
    end
    outfit1.outfits.each {|specific, information|
      if (sex==info.values_at("gender"))&&(@temperature>=info.values_at("temp_low"))&&(@temperature<=info.values_at("temp_high"))
        @final_outfit = information
      end
      }
  end
end

#outfit1 = Casual.new
#puts outfit1.outfits[:outfit1]
#puts ""
#puts outfit1.outfits[:outfit2]