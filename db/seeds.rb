require 'nokogiri'
require 'open-uri'

url = "http://countrycode.org/"
page = Nokogiri::HTML(open(url))
page.css('tr').each do |row|
  name = row.css('td')[0].try(:text).try(:squish)
  code = row.css('td')[2].try(:text).try(:gsub, ' ', '')

  if name and name != '' and code and code != ''
    country = Country.find_or_initialize_by(name: name)
    country.update_attributes(code: code)
    puts "#{name} #{code}"
    country.save
  end
end
