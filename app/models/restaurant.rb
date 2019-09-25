
require_relative "/Users/coleditzler/Desktop/code_challenge_1/app/models/review.rb"
class Restaurant
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review_guts| self == review_guts.restaurant } 
  end



  def average_star_rating
    avg_holder = 0
    count = 0 
    Review.all.each do |review_guts|  
    if review_guts.restaurant == self
      avg_holder += review_guts.rating
      count +=1
    end
  end
  average = (avg_holder/count).to_f
  average
  end 


end
Restaurant.new("cole")