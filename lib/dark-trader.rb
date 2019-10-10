require 'nokogiri'
require 'pry'
require 'open-uri'

def crypto_names_method
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      crypto_names =[]
      page.xpath('//*[@id]/td[2]/a').each do |crypto_name|
      crypto_names.push(crypto_name.text)
    end
      puts crypto_names
end

def crypto_prices_method
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      crypto_prices =[]
      page.xpath('//*[@id]/td[5]/a').each do |crypto_price|
      crypto_prices.push(crypto_price.text)
    end
      puts crypto_prices
end

def perform
    crypto_names_method
    crypto_prices_method
end

perform




