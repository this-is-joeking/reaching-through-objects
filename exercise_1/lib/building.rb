class Building
attr_reader :building_name,
            :building_number
  def initialize(number, name)
    @building_number = number
    @building_name = name
  end
end
