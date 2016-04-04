

subway_data = {
	price: {
		weekdays: 12,
		weekends: 20
	},
	rails: {
		yellow: {
			added_price: 0,
			speed: 50,
			stations: ["aqua", "salami"],
			cars: ["A156", "A158", "C259"]
		},
		red: {
			added_price: 0,
			speed: 40,
			stations: ["baron", "boardwalk"],
			cars: ["A456", "A458"]
		},
		blue: {
			added_price: 4,
			speed: 90,
			stations: ["newtown", "oldtown"],
			cars: ["B23", "B243", "B554"]
		},
	}
}

puts "Riding on #{subway_data[:rails][:blue][:cars][1]} to #{subway_data[:rails][:blue][:stations][0]}"
puts "It costs $#{subway_data[:price][:weekends] + subway_data[:rails][:blue][:added_price]} on the weekends"