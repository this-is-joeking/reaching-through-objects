class Street
  attr_reader :buildings_array
  def initialize(name)
    @street_name = name
    @buildings_array = []
  end

  def add_building(building)
    @buildings_array << building
  end

  def buildings
    buildings_alpha = @buildings_array.map do |bldg|
      bldg.building_name
    end
    buildings_alpha.sort
  end

  def number_of_available_apartments
    @buildings_array.sum {|bldg| bldg.num_avail_apts}
  end
end
