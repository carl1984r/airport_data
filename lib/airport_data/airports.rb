require 'pry'
class AirportData::Airports

  attr_accessor :state, :region, :airport_district_office, :city, :facility_name, :location_id, :site_number, :airport_reference, :point_coordinates, :manager_name, :address, :phone_numbers

  @@all = []

  def self.all

    @@all

  end

def self.location_id(location_id_input)
  all.select {|airport| airport.location_id == location_id_input.upcase}
end

def self.city(city_input)
  all.select {|airport| airport.city == city_input.upcase}
end

def self.state(state_input)
  all.select {|airport| airport.state == state_input.upcase}
end

def self.city_and_state(city_input, state_input)
  all.select {|airport| airport.state == state_input.upcase && airport.city == city_input.upcase}
end

def self.ado(ado_input)
  all.select {|airport| airport.airport_district_office == ado_input.upcase}
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
