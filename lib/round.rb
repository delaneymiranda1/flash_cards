class Round
  attr_reader :deck
  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def turns
    @turns
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    if @turns.include?(turn)
      false
    end
  end
end
