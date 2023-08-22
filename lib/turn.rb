class Turn 
  def initialize(guess, card)
    @guess = guess
    @card = card
  end
  def correct?
    card.answer == guess
  end
  # if true 
  #   return "Correct!"
  # else
  #   return "Incorrect."
  # end

end
