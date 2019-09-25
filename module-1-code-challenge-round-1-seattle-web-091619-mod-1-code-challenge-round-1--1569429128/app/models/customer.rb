class Customer
  attr_reader :first_name, :last_name
  attr_accessor :num_reviews, :restaurants

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @num_reviews = 0
    @restaurants = []
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def restaurants
    @restaurants.uniq!
  end

  def add_review(restaurant, rating, content)
    person = self
    @restaurants << restaurant
    restaurant = Restaurant.find_by_name(restaurant)

    rev = Review.new(person, restaurant, rating, content)
    @num_reviews += 1
  end
end
