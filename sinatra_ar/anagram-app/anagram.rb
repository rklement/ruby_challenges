require_relative 'reverse_letters'

def find_anagram(word)

	#change string into array of letters
	word = word.split('')

	#create the array that will hold anagrams
	anagrams = Array.new

	word.each_with_index do |letter, index|
		rest_of_letters = word.select { |l|	l != letter }
	

		anagrams << letter + rest_of_letters.join
		anagrams << letter + reverse_letters(rest_of_letters).join

	end

	return anagrams
end




