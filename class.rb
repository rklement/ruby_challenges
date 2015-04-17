class Dog

	def set_name=(dog_name)
		@name = dog_name
	end

	def get_name
		return @name
	end


	def set_breed=(breed)
		@breed = breed
	end

	def get_breed
		return @breed
	end

	def bark
		return "woof woof"
	end

end


my_dog = Dog.new
my_dog.set_name = "Meg"
new_dog_name = my_dog.get_name

