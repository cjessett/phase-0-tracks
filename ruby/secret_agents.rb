# get length of string
# Look at first letter
# if it's a space move on to next letter
# else change it to the next letter in alphabet
# then move to next letter
# repeat until length is reached

def encrypt(string)
	
	index = 0
	while index < string.length
		if string[index] == " "
			index += 1
		else
			string[index] = string[index].next
			index += 1
		end
	end
	return string
end

# alphabet = "abc...xyz"
# get length of string
# look at first letter
# if it's space move on to next letter
# else, find index of that character in the alphabet string
# reassign that character to alphabet[index - 1]
# move on to next letter 
# repeat until length is reached

def decrypt(string)

	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0

	while index < string.length
		if string[index] == " "
			index += 1
		else
			i = alphabet.index(string[index])
			string[index] = alphabet[i - 1]
			index += 1
		end
	end
	return string
end

