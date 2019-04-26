require 'pry'
class AirportData::Airports

  attr_accessor :state, :region, :airport_district_office, :city, :facility_name, :location_id, :site_number, :airport_reference, :point_coordinates, :manager_name, :address, :phone_numbers

  @@all = []

  def self.all

    @@all

  end


def self.create_from_scraper

  AirportData::Scraper.scrape_airport_data.each do |airport_hash|

      if airport_hash.any?

        airport_instance = self.new
        airport_hash.each_pair {|key, value| airport_instance.send(("#{key}="), value)}
        self.all << airport_instance

      end
    end
  end
end
