#CLI Controller
class AirportData::CLI

  def call
    menu
    goodbye
  end

  def list_airports
    AirportData::Airports.create_from_scraper
    AirportData::Airports.all
  end

  def goodbye
    #puts "Tnanks for using airportdata."
  end

  def menu
    input = nil
    while input != "exit"
    puts "-----------------------Airport Data Menu-----------------------"
    puts "To search airport by location identifier: type 'location_id'"
    puts "To search airports by city: type 'city'"
    puts "To search airports by state: type 'state'"
    puts "To exit program - type 'exit'"

  #  input = gets.strip
  #  case input
  #    when "location_id"
  #    puts "Enter the location identifier.  Examples: F95, AAF, ECP"
  #      input_1 = gets.strip
  #      list_airports.map {|x| x if x.location_id == "input_1"}
  #    end

    end
   end
  end
 end
end
