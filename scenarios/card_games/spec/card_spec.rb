require 'rspec'
require '../lib/card'

describe Card do
  it 'exists' do
    card = Card.new("spades", "2")

    expect(card).to be_a Card
  end

  it 'has a suit' do
    card = Card.new("diamonds", "A")

    expect(card.suit).to eq("diamonds")
    card_2 = Card.new("spades", "2")

    expect(card_2.suit).to eq("spades")
  end

  it 'has a value' do
    card = Card.new("diamonds", "A")

    expect(card.value).to eq("A")
  end
end
