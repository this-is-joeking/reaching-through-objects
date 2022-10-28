class Apartment
  # attr_reader :is_rented?

  def initialize
    @rented = false
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end
end
