require 'rspec'
require '../lib/room'
require '../lib/apartment'

describe Apartment do
  it 'exists' do
    apt = Apartment.new

    expect(apt).to be_a(Apartment)
  end
end
