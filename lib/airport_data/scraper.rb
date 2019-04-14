
class AirportData::Scraper

  def self.scrape_airport_data
    arr = []
    doc = Nokogiri::HTML(open("https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/contacts.cfm?Region=&District=&State=FL&County=&City=&Use=&Certification="))
    doc.css("body").first.css("table tbody tr td font")
    binding.pry
  end

  #test: doc.css("body table").first.css("tbody tr td font")[0].text.split[0]
  #test: doc.css("body").last.css("table tbody tr td font")[0].text.split[0]

  #state: doc.css("body").first.css("table tbody tr td font")[0].text.split[0]
  #region: doc.css("body").first.css("table tbody tr td font")[0].text.split[1]
  #ado: doc.css("body").first.css("table tbody tr td font")[0].text.split[2]
  #city: doc.css("body").first.css("table tbody tr td font")[1].children[0].text
  #county: doc.css("body").first.css("table tbody tr td font")[1].children[2].text
  #facility_name: doc.css("body").first.css("table tbody tr td font")[2].children[0].text
  #ownership_and_use: doc.css("body").first.css("table tbody tr td font")[2].children[2].text
  #location_id: doc.css("body").first.css("table tbody tr td font")[3].children[0].text
  #site_number: doc.css("body").first.css("table tbody tr td font")[3].children[2].text
  #airport_reference: doc.css("body").first.css("table tbody tr td font")[4].children[0].children[0].text
  #point_coordinates: doc.css("body").first.css("table tbody tr td font")[4].children[0].children[2].text
  #manager_name: doc.css("body").first.css("table tbody tr td font")[5].children.text
  #address_1: doc.css("body").first.css("table tbody tr td font")[6].children[1].text
  #address_2: doc.css("body").first.css("table tbody tr td font")[6].children[4].text
  #phone: doc.css("body").first.css("table tbody tr td font")[9].children[2].text

end
