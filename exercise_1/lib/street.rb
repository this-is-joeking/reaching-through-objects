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
    @buildings_array.map {|bldg| bldg.building_name}.sort

  end

  def number_of_available_apartments
    @buildings_array.sum {|bldg| bldg.num_avail_apts}
  end

  def list_available_apartments
    list = {}
    @buildings_array.map do |bldg|
      bldg.avail_apts.map do |apt|
        list[bldg.building_name] = apt.list_rooms_by_name_alphabetically
      end
    end
    list
  end
end
