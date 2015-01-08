require 'nokogiri'
require 'open-uri'
require 'csv'
require 'pry'

class CountrySeeder
  URL = "http://countrycode.org/"
  FILENAME = "#{File.dirname(__FILE__)}/countries.csv"

  attr_reader :countries

  def initialize
    retrieve_from_file
    unless @countries
      retrieve_from_web
      save_to_file
    end
  end

  def seed!
    @countries.each do |name, code|
      country = Country.find_or_initialize_by(name: name)
      country.update_attributes(code: code)
      puts "#{name} #{code}"
      country.save!
    end
  end

  protected
  def retrieve_from_web
    results = {}
    html = open(URL).read.gsub(/&nbsp;/, ' ')
    page = Nokogiri::HTML(html)
    page.css('tr').each do |row|
      name = row.css('td')[0].try(:text).try(:squish)
      code = row.css('td')[2].try(:text)
      if name and name != '' and code and code != ''
        results[name] = code
      end
    end
    @countries = results
  end

  def save_to_file
    CSV.open(FILENAME, 'wb') do |csv|
      csv << %w(country code)
      @countries.each { |k, v| csv << [k, v] }
    end
  end

  def retrieve_from_file
    return unless File.exists?(FILENAME)
    results = {}
    CSV.foreach(FILENAME, headers: true) do |row|
      country = row['country']
      code = row['code']
      results[country] = code
    end
    @countries = results
  end
end
