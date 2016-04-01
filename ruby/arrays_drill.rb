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