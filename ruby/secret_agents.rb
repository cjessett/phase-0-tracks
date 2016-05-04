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

		elsif string[index] == "z"
			string[index] = "a"
		else
			string[index] = string[index].next
		end
		index += 1
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

		else
			i = alphabet.index(string[index])
			string[index] = alphabet[i - 1]
		end
		index += 1
	end
	return string
end

=begin

puts encrypt("abc") == "bcd"
puts encrypt("zed") == "afe"
puts decrypt("bcd") == "abc"
puts decrypt("afe") == "zed" 

puts decrypt(encrypt("swordfish"))
#Because encrypt returns a string and decrypt receives a string as an argument, this nested method call works.
=end

# Prompts user for encryption or decryption
# Asks user for password
# prints the requested operations

puts "Would you like to encrypt (e) or decrypt (d)?:"
operation = gets.chomp

puts "Please enter password:"
password = gets.chomp.downcase

if operation == "e"
	p encrypt(password)
elsif operation == "d"
	p decrypt(password)
else
	puts "Sorry, I did not get that."
end