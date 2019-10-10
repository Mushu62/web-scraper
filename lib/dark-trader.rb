require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_names
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    puts page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[1]/td[3]")
end
