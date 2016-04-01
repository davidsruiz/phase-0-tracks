
def build_array(item1, item2, item3)
	return [item1, item2, item3]
end

def add_to_array(arr, new_item)
	arr << new_item
	return arr
end


fruit = []
p fruit

fruit = fruit + ["apple", "pear", "orange", "blueberries", "peach"]
p fruit

fruit.delete_at(2)
p fruit

fruit.insert(2, "strawberries")
p fruit

fruit.shift
p fruit

result = fruit.include?("pear")
p "It is #{result} that out fruit array includes #{fruit[0]}"

vegis = ["carrots", "lettuce"]
p vegis

food = fruit + vegis
p food


p build_array("cake", 2, nil)

p add_to_array([1, 3, 2, 5], "extra")
p add_to_array([true, false, true], 7)
p add_to_array(["123", "456"], "789")

