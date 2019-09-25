require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

r1 = Restaurant.new("Bapa Jhones")
r2 = Restaurant.new("Lil' Beesars")
r3 = Restaurant.new("Dominot")
r4 = Restaurant.new("Blockbuster")

c1 = Customer.new("John", "Pappa")
c2 = Customer.new("Papricka", "Pigg")
c3 = Customer.new("Norton", "Antevires")
c4 = Customer.new("Patty", "Stewy")
c5 = Customer.new("Richard", "Rickson")
c6 = Customer.new("Jorden", "Del Despacito")
c7 = Customer.new("Morton", "Derth")


c2.add_review("Lil' Beesars", 2, "food wasnt bad but there are bees")
c2.add_review("Lil' Beesars", 3, "there are still bees")
c2.add_review("Blockbuster", 3, "no bees")
c7.add_review("Lil' Beesars", 1, "Please. No more bees.")
c5.add_review("Lil' Beesars", 5, "I like the bees")
#puts Review.display_reviews("Lil' Beesars")
puts r2.reviews
puts r2.average_star_rating

#binding.pry
0 #leave this here to ensure binding.pry isn't the last line