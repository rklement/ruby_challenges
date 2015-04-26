
def reverse_letters(letters)

	array_length = letters.length
	array_reversed = Array.new(array_length)

	letters.each_with_index do |letter, index|
		array_reversed[array_length - index - 1] = letter
	end

	return array_reversed
end
