# PHONE class

class Phone
	attr_reader :name, :id, :owner, :call_history, :battery

	def initialize(name, id)
		@name = name
		@id = id
		@battery = 100
		@cell_service = 100
		@in_use = false
		@owner = nil

		@call_history = []
	end

	#setter methods
	def battery=(value)
  	if battery < 20
  		notify "battery is at #{battery}%, please charge!"
  	end
  end

	def give_to(person_name)
		@owner = person_name
		@in_use = true
	end

	def call(phone)
		@call_history << "#{phone.id} : #{phone.owner}"
		@battery = @battery - 5
	end

	def notify(message)
		puts "#{@owner}, #{message}"
	end

end


# DRIVER CODE

corp_phone_26 = Phone.new("Moto X", 26)
corp_phone_26.give_to("Joe")

corp_phone_28 = Phone.new("iPhone", 28)
corp_phone_28.give_to("Sally")

corp_phone_30 = Phone.new("HTC One", 30)
corp_phone_30.give_to("Billy")

corp_phone_26.call corp_phone_28
corp_phone_26.call corp_phone_28
corp_phone_26.call corp_phone_30

p corp_phone_26.battery
p corp_phone_26.call_history
