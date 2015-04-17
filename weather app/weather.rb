
require 'yahoo_weatherman'


puts "What zip code would you like to see the forecast for?"
zip_code = gets.chomp


def get_weather(location)


	client = Weatherman::Client.new
	forecast = client.lookup_by_location(location).forecasts


	forecast.each do |hash|
		
	current_day = Time.new.strftime("%w").to_i
	number_day = hash['date'].strftime("%w").to_i
	weekday = hash['date'].strftime("%A")
	description = hash['text'].downcase

		if current_day == number_day
			puts "Today's forecast is #{description}."
		elsif ((current_day + 1) == number_day) || ((current_day + 1) == 7)
			puts "Tomorrow's forecast is #{description}."
		else 
			puts "#{weekday}'s forecast is #{description}."
		end
	end
end

get_weather(zip_code)


