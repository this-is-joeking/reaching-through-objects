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
    unrented_apts = []
    @buildings_array.each do |building|
      building.list_apartments.each do |apt|
        if apt.is_rented? == false
          unrented_apts << apt
        end
      end
    end
    unrented_apts.length
  end
end
