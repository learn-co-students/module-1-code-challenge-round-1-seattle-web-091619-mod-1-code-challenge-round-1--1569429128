class Review
    attr_reader :cutstomer, :restaurant, :rating, :content
    @@all = []
  
    def initialize(cutstomer, restaurant, rating, content)
        @cutstomer = cutstomer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
     end
     
     def self.all
        @@all
     end

     def self.display_reviews(restaurant)
        res = Restaurant.find_by_name(restaurant)
        revs = @@all.select{|r| r.restaurant == res}
        revs.map {|r|
            puts r.cutstomer.full_name
            puts "Rating: #{r.rating}"
            puts r.content
            puts "------------------------------------------------------"
        }
     end

end

