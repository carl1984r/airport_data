#CLI Controller
class AirportData::CLI

  def call
    welcome
    build_airports
    list_airports
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

  def list_airports
    AirportData::Airports.all
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
           v = list_airports.select {|x| x if x.location_id == input_1}.map{|y| y}
           binding.pry
        end
     end
  end
end
