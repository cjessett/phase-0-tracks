class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times { puts 'Woof!' }
  end

  def roll_over
  	'**rolls over**'
  end

  def dog_years(human_years)
  	human_years * 7
  end

  def wag_tail
  	'**wags tail**'
  end

  def initialize
  	p "Initializing new puppy instance..."
  end

end

fido = Puppy.new

puts fido.fetch('ball')

puts fido.speak(3)

puts fido.roll_over

puts fido.dog_years(8)

puts fido.wag_tail



class Cat

	def initialize
		p "Initializing new Cat instance..."
	end

	def speak(num)
		num.times { puts 'meow' }
	end

	def purr
		'**purrs**'
	end

end

cats = []

50.times { cats << Cat.new }

cats.each { |cat|
	p cat.speak(1)
	p cat.purr
}