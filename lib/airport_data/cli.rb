#CLI Controller
class AirportData::CLI

  def call
    welcome
    build_airports
    menu
    goodbye
  end

  def welcome
    puts ""
    puts "==============================================================="
    puts "Welcome to Airport Data!  Please wait for the program to update"
    puts "with the latest airport information - this will take"
    puts "approximately one minute depending on connection."
    puts "Searchable data includes airports within the United States and "
    puts "its territories. Data is provided by the FAA."
    puts "==============================================================="
    puts ""
  end

  def display(x)
    puts ""
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
    puts ""
  end

  def build_airports
    AirportData::Airports.create_from_scraper
  end

  def goodbye
    puts ""
    puts "---------------------------------------------------------------"
    puts "Tnanks for using airportdata."
    puts "---------------------------------------------------------------"
    puts ""
  end

  def menu
    input = nil
    while input != "-3.14"
      puts ""
      puts "-----------------------Airport Data Menu-----------------------"
      puts "To search airports by location identifier: type 'location_id'"
      puts "To search airports by city: type 'city'"
      puts "To search airports by state or territory: type 'state'"
      puts "To search airports by airport district office: type 'ado'"
      puts "To exit program - type 'exit'"
      puts "---------------------------------------------------------------"
      puts ""
    input = gets.strip
      case input
        when "location_id"
           puts ""
           puts "---------------------------------------------------------------"
           puts "Enter the location identifier."
           puts ""
           puts "Examples: SFO, AAF, ECP"
           puts "---------------------------------------------------------------"
           puts ""
             input_1 = gets.strip
             v = AirportData::Airports.all.select {|x| x if x.location_id == input_1.upcase}.map{|y| y}
             v.count > 0 ? (v.each {|x| display(x)}) : (puts "No airports found per entry - please try again.")
        when "city"
           puts ""
           puts "---------------------------------------------------------------"
           puts "Enter the name of the city the airport is located in."
           puts ""
           puts "Examples: Miami, San Francisco, New York"
           puts "---------------------------------------------------------------"
           puts ""
             input_2 = gets.strip
             v = AirportData::Airports.all.select {|x| x if x.city == input_2.upcase}.map{|y| y}
             v.count > 0 ? (v.each {|x| display(x)}) : (puts "No airports found per entry - please try again.")
        when "state"
           puts ""
           puts "---------------------------------------------------------------"
           puts "Enter the state the airport is located in."
           puts ""
           puts "Examples: CA, AK, FL, NY"
           puts "---------------------------------------------------------------"
           puts ""
             input_3 = gets.strip
             v = AirportData::Airports.all.select {|x| x if x.state == input_3.upcase}.map{|y| y}
             v.count > 0 ? (v.each {|x| display(x)}) : (puts "No airports found per entry - please try again.")
        when "ado"
           puts ""
           puts "---------------------------------------------------------------"
           puts "Enter the name of the airport district office."
           puts ""
           puts "Examples: ORL, SFO, LAX"
           puts "---------------------------------------------------------------"
           puts ""
             input_4 = gets.strip
             v = AirportData::Airports.all.select {|x| x if x.airport_district_office == input_4.upcase}.map{|y| y}
             v.count > 0 ? (v.each {|x| display(x)}) : (puts "No airports found per entry - please try again.")
         when "exit"
           break
         else
           puts ""
           puts "***************************************************************"
           puts "Invalid entry - please try again."
           puts "***************************************************************"
           puts ""
      end
    end
  end
end
