require 'rspec'
require '../lib/room'

describe Room do
  it 'exists' do
    room = Room.new

    expect(room).to be_a(Room)
  end
end
