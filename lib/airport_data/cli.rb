#CLI Controller
class AirportData::CLI

  def call
    puts "Airport Data!"
    list_airports
  end

  def list_airports
    puts <<-DOC
    1. F95 - Altha, FL - New Orleans
    2. 0J6 - Headland, AL - New Orleans
    DOC
  end

end
