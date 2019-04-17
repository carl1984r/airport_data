require 'pry'
class AirportData::Airports

  attr_accessor :state, :region, :airport_district_office, :city, :facility_name, :location_id, :site_number, :airport_reference, :point_coordinates, :manager_name, :address, :phone_numbers

  @@all = []

  def initialize
    @state = state
    @region = region
    @airport_district_office = airport_district_office
    @city = city
    @facility_name = facility_name
    @location_id = location_id
    @site_number = site_number
    @airport_reference = airport_reference
    @point_coordinates = point_coordinates
    @manager_name = manager_name
    @address = address
    @phone_numbers = phone_numbers
  end
def self.create_from_scraper
   v = AirportData::Scraper.scrape_airport_data
   v.each do |x|
     if x.any?
       m = self.new
       m.state = x.fetch(:state)
       m.region = x.fetch(:region)
       m.airport_district_office = x.fetch(:airport_district_office)
       m.city = x.fetch(:city)
       m.facility_name = x.fetch(:facility_name)
     binding.pry
     end
   end

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
