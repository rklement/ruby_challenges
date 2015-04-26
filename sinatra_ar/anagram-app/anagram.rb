require_relative 'reverse_letters'

def find_anagram(word)
	#xyz

	# build an array composed of letters from word input
	word_array = Array.new

	#loop through each letter of word and push to word_array
	word.each_char do |char|
		word_array.push(char)		
	end

	#create the array that will hold anagrams
	anagrams = Array.new

	#add current word to anagrams
	anagrams.push(word)

	#add rest of anagrams
	place1 = word_array[0]
	place2 = word_array[1]
	place3 = word_array[2]

	word_array[1] = place3
	word_array[2] = place2

	anagrams.push(word_array.to_s.tr('[]\" ,', ''))

	word_array[0] = place2
	word_array[1] = place1
	word_array[2] = place3

	anagrams.push(word_array.to_s.tr('[]\" ,', ''))

	word_array[0] = place2
	word_array[1] = place3
	word_array[2] = place1

	anagrams.push(word_array.to_s.tr('[]\" ,', ''))

	word_array[0] = place3
	word_array[1] = place1
	word_array[2] = place2

	anagrams.push(word_array.to_s.tr('[]\" ,', ''))

	word_array[0] = place3
	word_array[1] = place2
	word_array[2] = place1

	anagrams.push(word_array.to_s.tr('[]\" ,', ''))

	return anagrams

	
end

find_anagram('abc')