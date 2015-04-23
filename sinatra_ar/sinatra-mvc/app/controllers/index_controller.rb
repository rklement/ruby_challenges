get '/:birthday' do 
	setup_index_view
end

get '/' do
	erb :form
end

post '/' do
	birthdate = params[:birthday].gsub("-", "")
	if Person.valid_birthdate(birthdate)
		path_number = Person.find_birth_path(birthdate)
		redirect "/message/#{path_number}"
	else

		@error = "Sorry, your input was invalid.  Please enter 8 numbers."
		erb :form

	end
end

get '/message/:path_number' do
	path_number = params[:path_number].to_i
	@message = Person.get_message(path_number)
	erb :index
end

def setup_index_view
	birthdate = params[:birthday]
	path_number = Person.find_birth_path(birthdate)
	@message = Person.get_message(path_number)
	erb :index
end







