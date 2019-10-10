require 'nokogiri'
require 'pry'
require 'open-uri'

def crypto_names
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
    puts page
end
