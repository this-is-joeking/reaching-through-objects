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

  def avail_apts
    @apartments.select {|apt| !apt.is_rented?}
  end

  def num_avail_apts
    avail_apts.length
  end

  def rooms_in_apts
    avail_apts.map {|apt| apt.list_rooms_by_name_alphabetically}
  end
end
