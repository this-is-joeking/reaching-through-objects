require 'rspec'
require '../lib/room'

describe Room do
  it 'exists' do
    room = Room.new("bathroom")

    expect(room).to be_a(Room)
  end

  it 'has a name' do
    bedroom = Room.new("bedroom")

    expect(bedroom.name).to eq("bedroom")
  end
end
