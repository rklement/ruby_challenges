get '/people/:id' do
   @person = Person.find(params[:id])
   birthdate_string = @person.birthdate.strftime("%m%d%y")
   path_num = Person.find_birth_path(birthdate_string)
   	@first = @person.first_name
   	@last = @person.last_name
      @message = Person.get_message(path_num)
   erb :"/people/show"
end