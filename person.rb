
class Person 

	attr_accessor :stomach, :allergies, :foods

	def initialize(allergies)
		@stomach = []
		@allergies = allergies 
	end

	def eat(foods) 
		@foods = foods

		foods.each do |food|
			if @allergies.include?(food)
				@stomach = []
				puts "AllergyError to #{food}"
			else
				@stomach.push(food)
			end
		end

	end	

	def empty_stomach()
		@stomach = []
		puts "AllergyError"
	end

end

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]


dustin = Person.new(["cheese", "gluten"])
puts "stomach contains: #{dustin.stomach}"
puts "allergies are: #{dustin.allergies}"

puts "just ate: #{dustin.eat(pizza)}"
puts "ate: #{dustin.foods}"
puts "stomach now has: #{dustin.stomach}"

p "just ate: #{dustin.eat(pan_seared_scallops)}"
p "ate: #{dustin.foods}"
p "stomach added: #{dustin.stomach}"


