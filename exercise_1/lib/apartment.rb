class Apartment
  attr_reader :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    names_list= @rooms.map do |room|
      room.name
    end
    names_list.sort
  end
end
