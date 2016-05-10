# Release 2
def add_to_array(array, item)
	array.push(item)
end

add_to_array([1,2,3], 4)

add_to_array([], 1)

add_to_array([1,2,3,4,5,6], 0)

# build_array

def build_array(a, b, c)
	array = [a, b, c]
end

build_array("one", "two", "three")

# Release 1

my_array = []

p my_array

my_array << 1 << 2 << 3 << 4 << 5

p my_array

my_array.delete_at(2)

p my_array

my_array.insert(2, "three")

p my_array

my_array.shift

p my_array

p "my_array includes the letter 'a': " + my_array.include?("a").to_s

your_array = ["seven", "eight", "nine"]

our_array = my_array + your_array

p our_array






