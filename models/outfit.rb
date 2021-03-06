require 'net/http'
require 'rexml/document'
require 'pry'
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
    elsif occasion == 'very fancy'
      outfit1 =  Very_Fancy.new
    elsif occasion == 'office work'
      outfit1 = Office_Work.new
    end
    outfit1.outfits.each_value do |information|
      if (sex==information[:gender])&&(@temperature.to_i>information[:temp_low].to_i)&&(@temperature.to_i<information[:temp_high].to_i)
        @final_outfit = information
      end
    end
  end
end
#outfit = Outfit.new(10003, "female", "casual")

  #puts outfit1.outfits[:outfit2]
#outfit1 = Casual.new
#puts outfit1.outfits[:outfit1]
#puts ""
#puts outfit1.outfits[:outfit2]