require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

list = doc.css('.components-data')


counter = 1
puts "The Ingredients For This Sandwich Are:"
list.each do |list_item|
	puts "#{counter}.  #{list_item.inner_html.strip}"
	counter += 1
end



