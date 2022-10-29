class Building
attr_reader :building_name,
            :building_number
  def initialize(number, name)
    @building_number = number
    @building_name = name
    @apartments = []
  end

  def add_apartment(apt)
    @apartments << apt
  end

  def list_apartments
    @apartments
  end
end
