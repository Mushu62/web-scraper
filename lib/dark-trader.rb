require 'rubygems'
require 'nokogiri'

def crypto_names
    page_url = "https://coinmarketcap.com/all/views/all/"
    page = Nokogiri::HTML(open(page_url))
    puts page
end
