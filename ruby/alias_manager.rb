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

# The global variable 'vowels' is crucial to this program and is called often
$vowels = "aeiou"

# The next_vowel method takes a vowel as input and finds it's index in the '$vowels' string,
# it then checks whether it is the last character in the '$vowels' string and shifts to the next vowel accordingly.


def next_vowel(char)
	char_index = $vowels.index(char)
	char_index == $vowels.length - 1 ? char = "a" : char = $vowels[char_index + 1]
end

# The next_consonant method takes a consonant as input and calls the #next method on it, 
# if the next character is in the '$vowels' string it keeps shifting until it finds a character that isn't.

def next_consonant(char)
	# checks for edge case, then handles it or shifts to the next character with #next
	char == "z" ? new_char = "b" : 	new_char = char.next
	# keeps shifting with #next method until it finds a character not included in the 'vowel' string
	while $vowels.include?(new_char)
		new_char = new_char.next
	end
	new_char
end

# The shift method takes an array as input and checks whether each element is a vowel or consonant
# then shifts each element in the array to the next vowel or consonant respectively

def shift(array)
	array.map! { |letter|
		$vowels.include?(letter) ? letter = next_vowel(letter) : letter = next_consonant(letter)
	}
	array[0].upcase!
	array.join
end

# The alias manager method take a name as input and seperates the first and last into arrays, 
# then calls the shift method and finally returns the combined full alias.

def alias_manager(string)
	string.downcase!
	array = string.split(' ')
	array.reverse!

	first_name = array[0].split('')
	last_name = array[1].split('')

	new_alias = "#{shift(first_name)} #{shift(last_name)}"
end






