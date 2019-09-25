class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(r_name)
    @@all.select{|restaurant| restaurant.name == r_name}
  end

  def self.all
    @@all
  end

  def reviews
    #Review.display_reviews(self)
    res = self
    revs = Review.all.select{|r| r.restaurant == res}
    puts revs
    revs.map {|r|
        puts r.cutstomer.full_name
        puts "Rating: #{r.rating}"
        puts r.content
        puts "------------------------------------------------------"
    }
 end

  def average_star_rating
    res = self
    revs = Review.all.select{|r| r.restaurant == res}
    puts revs
    rates = revs.select{|r| r}
    puts rates
  end

end
