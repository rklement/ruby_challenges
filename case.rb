puts "What will the weather be like today?"
weather = gets.chomp.downcase

case (weather)
when 'sunny'
	puts 'T-shirt and shorts today!'
when 'cloudy'
	puts 'No need for the sunglasses today.'
when 'foggy'
	puts 'You may need to dress a little warmer today.'
when 'rainy'
	puts 'Wear your rain jacket!'
when 'snowy'
	puts 'Wear your parka please!'
else
	puts 'I have no idea what you should wear.'
end

