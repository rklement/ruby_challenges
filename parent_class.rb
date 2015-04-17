
#define the Pet class
class Pet

	def set_name=(pet_name)
		@name = pet_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

end


class Ferret < Pet
 
 	#all that is unique to Ferret is the squeal.
 	#the rest are inherited from Pet
	
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla < Pet
 
	#squeek is unique to Chinchilla
 
	def squeek
		return "eeeep"
	end
end
 
class Parrot < Pet

	#make Parrots tweet!
	
	def tweet
		return "Tweet! Tweet!"
	end
 
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
 
my_chincilla = Chincilla.new
my_chincilla.set_name= "Dali"
chincillaname = my_chincilla.get_name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chincillaname} says #{my_chincilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect