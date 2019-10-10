require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_names
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    table = document.at('#currencies-all > tbody')
    
    table.search('tr').each do |tr|
    cells = tr.search('td.text-left.col-symbol, td.no-wrap.market-cap.text-right')
      
      end

      cells.each do |cell|
      text = cell.text.strip
      
      puts CSV.generate_line(cells)
      end
end
