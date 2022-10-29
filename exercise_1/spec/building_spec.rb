require 'rspec'
require '../lib/room'
require '../lib/apartment'
require '../lib/building'

describe Building do
  it 'exists' do
    building = Building.new

    expect(building).to be_a Building
  end
end
