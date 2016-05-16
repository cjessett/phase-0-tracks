class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
  	num_of_times.times { puts 'Woof!' }
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