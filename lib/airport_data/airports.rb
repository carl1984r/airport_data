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

  def self.all

    @@all

  end


def self.create_from_scraper

  AirportData::Scraper.scrape_airport_data.each do |airport_hash|

      if airport_hash.any?

        airport_instance = self.new
        airport_hash.each_pair {|key, value| airport_instance.send(("#{key}="), value)}
        @@all << airport_instance

      end
    end
  end
end
