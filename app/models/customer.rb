require 'pry'
require_relative "/Users/coleditzler/Desktop/code_challenge_1/app/models/review.rb"
require_relative "/Users/coleditzler/Desktop/code_challenge_1/app/models/restaurant.rb"

class Customer
  attr_reader :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restraunt, content, rating, customer)
    Review.new(restraunt, content, rating)
  end

  def num_reviews
    Review.all.count { |review_guts| self == review_guts.customer } 
  end

  def restaurants
    step_one = []
    counter = 0
    Review.all.select do |review_guts| 
    if self == review_guts.customer 
        step_one[counter] = review_guts
       counter += 1
    end
  end
  answer = []
  answer =step_one.uniq
return answer
  end
end
test_cust = Customer.new("Coil", "Schattz")
test_object = Review.new( Restaurant.new("Meat Lounge!"), "nothoughts",  5, test_cust)
test_object = Review.new(Restaurant.new("Meat Lounge!"), "nothoughts",  5, test_cust)
test_object_two = Review.new( Restaurant.new("Heat Lounge!"), "nothoughts",  4, test_cust)
test_object_three = Review.new(Restaurant.new("Meat Lounge!"),"nothoughts",   4, test_cust)

pry.start