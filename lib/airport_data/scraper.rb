
class AirportData::Scraper

  def self.scrape_airport_data
    arr = []
    doc = Nokogiri::HTML(open("https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/contacts.cfm?Region=&District=&State=FL&County=&City=&Use=&Certification="))
    doc.css("body").first
    binding.pry
  end

end
