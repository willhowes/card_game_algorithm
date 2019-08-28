def equal_cards?(cards)

  # - sort cards into order ascending order
  cards.sort!
  # check each card
  cards.each_with_index do |card, index|
    # - check if is the same as the next card
    if card == cards[index + 1]
      # - if it is the same, return true
      return true
    end
    # if not continue to check through next card
  end
  false
  # - repeat the until run out of cards.
end


## TESTS

p "TEST 1"
p equal_cards?(["J"])

p "TEST 2"
p equal_cards?(["J", 'K'])

p "TEST 3"
p equal_cards?(["J", "J"])

p "TEST 4"
p equal_cards?(["J", "J", "K"])


p "TEST 5"
p equal_cards?(["J", "J", "K", "K"])

p "TEST 6"
p equal_cards?(['A', 'J', 'K', 'Q', '7' ])

p "TEST 7"
p equal_cards?(["J", "J", "J"])

p "TEST 8"
p equal_cards?(["J", "J", "J", "J"])

p "BLANK ARRAY TEST"
p equal_cards?([])

p "2 Jokers Test"
p equal_cards?(["Joker", "Joker"])

p "1 Joker Test"
p equal_cards?(["Joker", "2"])

p "Non-card values return true if duplicates"
p equal_cards?(["13", "13"])

p "Non card and duplicate cards"
p equal_cards?(["14", "J", "J"])
