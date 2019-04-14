
class AirportData::Scraper

  def self.scrape_airport_data
    arr = []
    doc = Nokogiri::HTML(open("https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/contacts.cfm?Region=&District=&State=FL&County=&City=&Use=&Certification="))
    doc.css("body").first.css("table tbody tr td font")
    binding.pry
  end

  #state: doc.css("body").first.css("table tbody tr td font")[0].text.split[0]
  #region: doc.css("body").first.css("table tbody tr td font")[0].text.split[1]
  #ado: doc.css("body").first.css("table tbody tr td font")[0].text.split[2]

end
