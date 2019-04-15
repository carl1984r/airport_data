
class AirportData::Scraper

  def self.scrape_airport_data
    arr = []
    doc = Nokogiri::HTML(open("https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/contacts.cfm?Region=&District=&State=FL&County=&City=&Use=&Certification="))
    doc.css("body table").each do |x|
      index = {}
      index[:state] = x.css("tbody tr td font")[0].children[0].text if x.css("tbody tr td font").any?
      index[:region] = x.css("tbody tr td font")[0].children[3].children.text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[0].children[3].respond_to?(:'any?')
      index[:airport_district_office] = x.css("tbody tr td font")[0].children[6].text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[0].children[6].respond_to?(:'any?')
      index[:city] = x.css("tbody tr td font")[1].children[0].text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[1].respond_to?(:'any?')
      index[:facility_name] = x.css("tbody tr td font")[2].children[0].text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[2].respond_to?(:'any?')
      index[:location_id] = x.css("tbody tr td font")[3].children[0].children.text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[3].respond_to?(:'any?')
      index[:site_number] = x.css("tbody tr td font")[3].children[2].children.text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[3].respond_to?(:'any?')
      index[:airport_reference] = x.css("tbody tr td font")[4].children[0].children[0].text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[4].respond_to?(:'any?')
      index[:point_coordinates] = x.css("tbody tr td font")[4].children[0].children[2].text if x.css("tbody tr td font").any? && x.css("tbody tr td font")[4].respond_to?(:'any?')
      index[:manager_name] = x.css("tbody tr td font")[5].children.text if x.css("tbody tr td font")[5].respond_to?(:'any?')
      index[:address] = x.css("tbody tr td font")[6].text.gsub("\r\n        ", " - ") if x.css("tbody tr td font")[6].respond_to?(:'any?')
      index[:phone_1] = x.css("tbody tr td font")[9].text if x.css("tbody tr td font")[9].respond_to?(:'any?') && x.css("tbody tr td font").any?
      #index[:phone_2] = x.css("tbody tr td font")[9].children[0].text.strip if x.css("tbody tr td font").any? && x.css("tbody tr td font")[9].respond_to?(:'any?')
      arr.push(index)
      #binding.pry
    end
  arr
  binding.pry
  end

  #state: doc.css("body table")[1].css("tbody tr td font")[0].children[0].text
  #region: doc.css("body table")[1].css("tbody tr td font")[0].children[3].children.text
  #airport_district_office: doc.css("body table")[1].css("tbody tr td font")[0].children[6].text
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
