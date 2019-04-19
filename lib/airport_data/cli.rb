#CLI Controller
class AirportData::CLI

  def call
    welcome
    build_airports
    menu
    goodbye
  end

  def welcome
    puts "Welcome to Airport Data!  Please wait for the program to update"
    puts "with the latest airport information.  This should take less than"
    puts "a minute..."
  end

  def build_airports
    AirportData::Airports.create_from_scraper
  end

  def goodbye
    puts "Tnanks for using airportdata."
  end

  def menu
    input = nil
    while input != "exit"
    puts "-----------------------Airport Data Menu-----------------------"
    puts "To search airport by location identifier: type 'location_id'"
    puts "To search airports by city: type 'city'"
    puts "To search airports by state: type 'state'"
    puts "To exit program - type 'exit'"
    input = gets.strip
      case input
        when "location_id"
        puts "Enter the location identifier.  Examples: F95, AAF, ECP"
           input_1 = gets.strip
           v = AirportData::Airports.all.select {|x| x if x.location_id == input_1}.map{|y| y}
           v.each do |x|
             puts "-----------------------------------------------------------"
             puts "Facility Name:  #{x.facility_name}"
             puts "Address:  #{x.address}"
             puts "Manager Name:  #{x.manager_name}"
             puts "Phone Number(s):  #{x.phone_numbers.flatten[0]}  #{x.phone_numbers.flatten[1]}"
             puts "Location ID:  #{x.location_id}"
             puts "Airport District Office:  #{x.airport_district_office}"
             puts "Airport Reference:  #{x.airport_reference}"
             puts "Point Coordinates:  #{x.point_coordinates}"
             puts "Region:  #{x.region}"
             puts "Site Number:  #{x.site_number}"
             puts "-----------------------------------------------------------"
           end
        end
     end
  end
end
