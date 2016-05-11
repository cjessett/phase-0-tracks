# Alias manager that takes a first and last name for an argument and does the following:

# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.


# vowels = "aeiou" (has global scope)

# next_vowel method:

# take a character as input (char)
# finds index of char in 'vowels'
# changes character to the next vowel
# handles edge cases


# next_consonant method
# takes a character as input
# changes character to the next consonant
# handles edge cases


# alias_manager method
# downcases string 
# splits name into array of lenth two
# reverses array elements
# iterates through characters of each element in array
# calls next_consonant or next_vowel on each (map!)?
# joins array


$vowels = "aeiou"

def next_vowel(char)
	char_index = $vowels.index(char)
	char_index == $vowels.length - 1 ? char = "a" : char = $vowels[char_index + 1]
end

def next_consonant(char)

	char == "z" ? new_char = "b" : 	new_char = char.next
	while $vowels.include?(new_char)
		new_char = new_char.next
	end
	new_char
end


