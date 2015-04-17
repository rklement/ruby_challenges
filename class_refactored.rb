class Dog

	attr_accessor :name, :breed

	def bark
		return "woof woof"
	end
end

my_dog = Dog.new
my_dog.name = "Meg"
dogname = my_dog.name
puts my_dog.inspect
