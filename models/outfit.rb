class Outfit
  attr_accessor :zipcode, :sex, :occasion
  
  def initialize(zipcode, sex, occasion)
    @zipcode = zipcode
    @sex = sex
    @occasion = occasion
  end
end