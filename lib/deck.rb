class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
    @category_deck = []
  end

  def count
    @cards = 3
  end

  def cards_in_category(category_filter)
    @category_deck = @cards.select do |card| 
      card.category == category_filter
    end
  end

end
