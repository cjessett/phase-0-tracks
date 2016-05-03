puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0 
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Our cafeteria serves garlic bread, would you like some?(y/n)"
	gets.chomp == "y" ? garlic_bread = true : garlic_bread = false

	puts "Would you like to enroll in the company's health insurance?(y/n)"
	gets.chomp == "y" ? insurance = true : insurance = false

	probable_age = 2016 - year_born

	if probable_age == age || probable_age == age + 1 # Here I account for someone who hasn't reached their birthday this year
		correct_age = true
	else
		correct_age = false
	end

	p correct_age
	p garlic_bread
	p insurance

	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif correct_age && ( garlic_bread || insurance )
		puts "Probably not a vampire."
	elsif !correct_age && (!garlic_bread && !insurance)
		puts "Almost certainly a vampire."
	elsif !correct_age && ( !garlic_bread || !insurance )
		puts "Probably a vampire."
	else
		puts "Results inconclusive"
	end

	while true
		puts "Please type any allergies, one at a time, then type 'done':"
		allergy = gets.chomp
		if allergy == "done"
			break
		elsif allergy == "sunshine"
			puts "Probably a vampire"
			break
		end
	end
	
	employees -= 1
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

