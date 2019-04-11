class AirportData::Airports

  attr_accessor :identifier, :location, :sectional

  def self.today
    #Return instances of updated airport information.
    puts <<-DOC
    1. 0J6 - Headland, AL - New Orleans
    2. ECP - Panama City, FL - New Orleans
    DOC

  #  airport = self.new
  #  airport.identifier = "0J6"
  #  airport.location = "Headland, AL"
  #  airport.sectional = "New Orleans"

  #  [airport]

  end

end
