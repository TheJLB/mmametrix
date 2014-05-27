require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://hosteddb.fightmetric.com/fighters/details/401"
doc = Nokogiri::HTML.parse(open(url))

puts doc

fighter = doc.css('.fighter_details_h1')

i=0 

until i >= 1 do
	name = doc.css(".fighter_details_h1").text
	nickname = doc.css(".nickname").text
	win = doc.css(".record_info .title_text+ td").text
	loss = doc.css(".light_text+ tr td:nth-child(4)").text
	draw = doc.css(".light_text+ tr td:nth-child(6)").text
	nc = doc.css(".light_text+ tr td:nth-child(8)").text
  
  #height = doc.css('.bio_info .title_text+ td')[0].text.split(/[()]/)
  height = doc.css('.bio_info .title_text+ td')[0].text.to_s #.scan(/\(([^)]+)\)/).last
  #height = (height[1]).to_i

	weight = doc.css('.bio_info .title_text+ td')[1].text.split(/[()]/)

	reach = doc.css('.bio_info .title_text+ td')[2].text.split(/[()]/)

	stance = doc.css('.bio_info .title_text+ td')[3].text
	age = doc.css('.bio_info .title_text+ td').last.text

  slpm = doc.css(".career_statistic .title_text+ td")[0].text
	stracc = doc.css(".career_statistic .title_text+ td")[2].text
	sapm = doc.css(".career_statistic tr:nth-child(3) td:nth-child(2)")[i].text
	strdef = doc.css(".career_statistic .title_text+ td")[6].text
	tdavg = doc.css(".career_statistic .title_text+ td")[1].text
	tdacc = doc.css(".career_statistic .title_text+ td")[3].text
	tddef = doc.css(".career_statistic .title_text+ td")[5].text
	subavg = doc.css(".career_statistic .title_text+ td")[7].text
		
 	i +=1

puts name
puts nickname
puts win
puts loss
puts draw
puts nc
puts "---"
puts height
puts height.class
puts "---"
puts weight[1]
puts reach[1]
puts stance
puts age
puts slpm
puts stracc
puts sapm
puts strdef
puts tdavg
puts tdacc
puts tddef
puts subavg

end