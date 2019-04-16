require 'pry'
class AirportData::Airports

  attr_accessor :state, :region, :airport_district_office, :city, :facility_name, :location_id, :site_number, :airport_reference, :point_coordinates, :manager_name, :address, :phone_numbers

  #def initialize(AirportData::Scraper.scrape_airport_data)

  def self.create_from_scraper
    v = AirportData::Scraper.scrape_airport_data
      binding.pry
    #Return instances of updated airport information.
    #puts <<-DOC
    #1. 0J6 - Headland, AL - New Orleans
    #2. ECP - Panama City, FL - New Orleans
    #DOC

  #  airport = self.new
  #  airport.identifier = "0J6"
  #  airport

  end

end
