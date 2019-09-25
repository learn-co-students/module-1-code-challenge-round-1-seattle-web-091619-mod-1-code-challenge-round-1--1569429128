class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    numerator = reviews.sum { |review| review.rating}
    denominator = reviews.length
    # Multiplying by 1.0 to turn the numerator into a float so rounding doesn't occur
    (numerator * 1.0 / denominator)
  end

  def longest_review
    reviews.max_by { |review| review.content.length }.content
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end

  def self.all
    @@all
  end

end
