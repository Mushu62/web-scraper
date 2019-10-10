require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_names
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    puts page.xpath('//*[@id="id-bitcoin"]/td[3]')
end
