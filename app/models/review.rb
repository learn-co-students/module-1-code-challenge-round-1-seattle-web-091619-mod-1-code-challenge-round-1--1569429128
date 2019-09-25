
class Review


    attr_accessor :customer, :restaurant, :rating, :content
    @@all = []

    def initialize(restrante, content,  stars, customer)
        @customer = customer
        @restaurant = restrante
        @rating = stars
        @content = content
        @@all << self
    end

    def customers
        step_one = []
        counter = 0
        Review.all.select do |review_guts| 
        if self == review_guts.restaurant
            step_one[counter] = review_guts
           counter += 1
        end
      end
      answer = []
      answer =step_one.uniq
    return answer
      end

      def review
        step_one = []
        counter = 0
        Review.all.each do |review_guts| 
            if self == review_guts.restaurant
                step_one[counter] = review_guts
               counter += 1
            end
          end
          return step_one
      end

      def longest_review
        step_one = []
        counter = 0
        Review.all.each do |review_guts| 
            if self == review_guts.restaurant
                step_one[counter] = review_guts
               counter += 1
            end
          end
          content_length = 0
          index = 0
          count = 0 
          step_one.each do |review_guts| 
                    if content_length < review_guts.content.length
                        count+=1
                            content_length = review_guts.content.length
                            index = count
                    end
          end
          return step_one[index].content
      end

    def self.all
        @@all
    end
  
end

