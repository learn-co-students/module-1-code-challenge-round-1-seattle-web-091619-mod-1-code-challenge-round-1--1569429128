require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jon = Customer.new("Jon", "Pall")
bill = Customer.new("Bill", "Kaz")
ed = Customer.new("Ed", "Hall")

jon2 = Customer.new("Jon", "Second")

dominos = Restaurant.new("Dominos")
subway = Restaurant.new("Subway")
chipotle = Restaurant.new("Chipotle")

# test restaurant object that has no review
dominos2 = Restaurant.new("Dominos Dimonos Dosminom Mindoos")

jon_dominos = Review.new(jon, dominos, "Pizza was good", 5)
bill_dominos = Review.new(bill, dominos, "Pizza was almost good", 4)
ed_subway = Review.new(ed, subway, "Very bad", 1)
jon2_dominos = Review.new(jon2, dominos, "Pizza", 4)

jon.add_review(subway, "Mediocre", 3)
ed.add_review(subway, "Better than before", 3)
bill_dominos2 = bill.add_review(dominos, "My disappointment is immeasurable, and my day is ruined.", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line