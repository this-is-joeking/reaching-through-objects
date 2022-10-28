class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies == []
  end

  def count
    @candies.length
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_in_question)
    @candies.any? {|candy| candy.type == candy_in_question}
  end
end
