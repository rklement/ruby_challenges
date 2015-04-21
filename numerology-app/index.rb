require 'sinatra'


def find_birth_path(birthdate)
	digit_1 = birthdate[0].to_i
	digit_2 = birthdate[1].to_i
	digit_3 = birthdate[2].to_i
	digit_4 = birthdate[3].to_i
	digit_5 = birthdate[4].to_i
	digit_6 = birthdate[5].to_i
	digit_7 = birthdate[6].to_i
	digit_8 = birthdate[7].to_i

	number = digit_1 + digit_2 + digit_3 + digit_4 + digit_5 + digit_6 + digit_7 + digit_8
	number = number.to_s

	digit_1 = number[0].to_i
	digit_2 = number[1].to_i

	number = digit_1 + digit_2

	if number > 9 
		number = number.to_s
		digit_1 = number[0].to_i
		digit_2 = number[1].to_i
		number = digit_1 + digit_2
	end
	return number
end


	
def get_message(path_number)
	
	case (path_number)
		when 1
			message =  "Your numerology number is #{path_number}. One is the leader.  The number one indicates the ability to stand alone, and is a strong vibration.  Ruled by the Sun".
		when 2
			message = "Your numerology number is #{path_number}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			message = "Your numerology number is #{path_number}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			message = "Your numerology number is #{path_number}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			message = "Your numerology number is #{path_number}. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6
			message = "Your numerology number is #{path_number}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7
			message = "Your numerology number is #{path_number}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8
			message = "Your numerology number is #{path_number}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9
			message = "Your numerology number is #{path_number}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

def valid_birthdate(input)
	if (input.length == 8) && (input.match(/^[0-9]+[0-9]$/))
		return true
	else
		return false
	end

end

get '/:birthdate' do 
	setup_index_view
end

get '/newpage/' do
	@random = "hello!"
	erb :newpage
end

get '/' do
	erb :form
end

post '/' do
	birthdate = params[:birthday]
	if valid_birthdate(birthdate)
		path_number = find_birth_path(birthdate)
		redirect "/message/#{path_number}"
	else

		@error = "Sorry, your input was invalid.  Please enter 8 numbers."
		erb :form

	end
end

get '/message/:path_number' do
	path_number = params[:path_number].to_i
	@message = get_message(path_number)
	erb :index
end




#def setup_index_view
#	raw_birthdate = params[:birthday]
#	birthdate = raw_birthdate.tr('-', '')
#	path_number = find_birth_path(birthdate)
#	@message = get_message(path_number)
#	"#{@message}"
#	erb :index
#end






