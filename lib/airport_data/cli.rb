#CLI Controller
class AirportData::CLI

  def call
    list_airports
    menu
    goodbye
  end

  def list_airports
    puts "Airport Data!"
    AirportData::Airports.create_from_scraper

  end

  def goodbye
    puts "Tnanks for using airportdata."
  end

  def menu
    input = nil
    while input != "exit"
    puts "Enter the 3 letter airport identifier you would like for information on, otherwise type exit:"
    input = gets.strip
    case input
    when "0J6"
      puts "0J6 - Headland, AL - New Orleans"
    when "ECP"
      puts "ECP - Panama City, FL - New Orleans"
    when "list"
      list_airports
    else
      puts "Entry not in database. Please retry."
    end
  end
 end
end
