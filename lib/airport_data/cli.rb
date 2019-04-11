#CLI Controller
class AirportData::CLI

  def call
    list_airports
    menu
    goodbye
  end

  def list_airports
    puts "Airport Data!"
    puts <<-DOC
    1. 0J6 - Headland, AL - New Orleans
    2. ECP - Panama City, FL - New Orleans
    DOC
  end

  def goodbye
    puts "Tnanks for using airportdata."
  end

  def menu
    puts "Enter the 3 letter airport identifier you would like for information on, otherwise type exit:"
    input = nil
    while input != "exit"
    input = gets.strip
    case input
    when "0J6"
      puts "0J6 - Headland, AL - New Orleans"
    when "ECP"
      puts "ECP - Panama City, FL - New Orleans"
    when "list"
      list_airports
    end
  end
 end
end
