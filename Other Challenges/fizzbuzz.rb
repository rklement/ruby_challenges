#define the interator variable i 
i = 1

#begin while loop
while i <= 100

	#check conditions
	if (i % 3 == 0) && (i % 5 == 0) 
		puts "FizzBuzz"
	elsif i % 3 == 0
		puts "Fizz"
	elsif i % 5 == 0
		puts "Buzz"
	else puts i
	end

	#increase iterator by 1
	i += 1
end


		