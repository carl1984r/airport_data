
class AirportData::Scraper

  def self.scrape_airport_data
    arr = []
    doc = Nokogiri::HTML(open("https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/contacts.cfm?Region=&District=&State=FL&County=&City=&Use=&Certification="))
    #doc.css("body table")
    binding.pry
  end

  #state: doc.css("body table")[1].css("tbody tr td font")[0].children[0].text
  #region: doc.css("body table")[1].css("tbody tr td font")[0].children[3].children.text
  #ado: doc.css("body table")[1].css("tbody tr td font")[0].children[6].text
  #city: doc.css("body table")[1].css("tbody tr td font")[1].children[0].text
  #county: doc.css("body table")[1].css("tbody tr td font")[1].children[2].text
  #facility_name: doc.css("body table")[5].css("tbody tr td font")[2].children[0].text
  #ownership_and_use: doc.css("body table")[1].css("tbody tr td font")[2].children[2].text
  #location_id: doc.css("body table")[5].css("tbody tr td font")[3].children[0].children.text
  #site_number: doc.css("body table")[5].css("tbody tr td font")[3].children[2].children.text
  #airport_reference: doc.css("body table")[5].css("tbody tr td font")[4].children[0].children[0].text
  #point_coordinates: doc.css("body table")[5].css("tbody tr td font")[4].children[0].children[2].text
  #manager_name: doc.css("body table")[5].css("tbody tr td font")[5].children.text
  #address_1: doc.css("body table")[5].css("tbody tr td font")[6].children[1].text
  #address_2: doc.css("body table")[5].css("tbody tr td font")[6].children[4].children.text
  #phone_1: doc.css("body table")[5].css("tbody tr td font")[9].children[2].text.strip
  #phone_2: doc.css("body table")[5].css("tbody tr td font")[9].children[0].text.strip


end
