# Austin Climbing Areas

austin_climbing = {
	greenbelt: {
		formal_name: 'Barton Creek Greenbelt',
		info: {
			swimming?: true,
			camping?: false,
			potable_water: false,
			access: 'easy',
			price: 0
		},
		popular_crags: [
			"Gus Fruh",
			"Great Wall",
			"Seismic",
			"New Wall"
		]

	},
	reimers: {
		formal_name: "Reimer's Ranch",
		info: {
			swimming?: true,
			camping?: false,
			potable_water: true,
			access: 'medium',
			price: 10
		},
		popular_crags: [
			"Dead Cats",
			"Zoe's",
			"Prototype",
			"Sex Cave",
			"North Shore"
		]
	},
	e_rock: {
		formal_name: 'Enchanted Rock',
		info: {
			swimming?: false,
			camping?: true,
			potable_water: true,
			access: 'medium',
			price: 10
		},
		popular_crags: [
			"Echo Canyon",
			"Carnivore Boulders",
			"Backside",
			"Buzzards Roost"
		]
	}
}

puts "Camping at Enchanted Rock: #{austin_climbing[:e_rock][:info][:camping?]}"

puts "Swimming at the Greenbelt: #{austin_climbing[:greenbelt][:info][:swimming?]}"

puts "Popular crags at the Reimer's: #{austin_climbing[:reimers][:popular_crags]}"

puts "Price of entry for each area: "

# Here I print out the price of admission for each area by iterating through the keys
i = 0
keys = austin_climbing.keys
while i < keys.length
	# Here I access the keys by calling their index in the 'keys' array
	puts "#{austin_climbing[keys[i]][:formal_name]}: #{austin_climbing[keys[i]][:info][:price]}"
	i += 1
end
