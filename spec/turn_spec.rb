require './lib/turn'
require './lib/card'
require 'pry'

RSpec.describe do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  it 'exists' do
    turn = Turn.new("Juneau", card)
    
    expect(turn).to be_instance_of(Turn)
  end 

  it 'references a card' do
    turn = Turn.new("Juneau", card)

    expect(turn.card).to eq(card)
  end

  it 'has a guess' do
    turn = Turn.new("Juneau", card)

    expect(turn.guess).to eq("Juneau")
  end

  it 'has a guess' do
    turn = Turn.new("Denver", card)

    expect(turn.correct?).to be false
  end

  it 'has a guess' do
    turn = Turn.new("Juneau", card)

    expect(turn.correct?).to be true
  end

  it 'has a guess' do
    turn = Turn.new("Juneau", card)

    expect(turn.feedback).to eq("Correct!")
  end

  it 'has a guess' do
    turn = Turn.new("Denver", card)

    expect(turn.feedback).to eq("Incorrect.")
  end
end
