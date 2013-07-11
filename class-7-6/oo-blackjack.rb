# 1. Extract major nouns out of specifications
# 2. Organize behaviors into the classes (Who does what?)
# 3.

class Card; 
  attr_accessor :suit, :value

  def initialize(value, suit)
    self.suit = suit
    self.value = value
  end

  def to_s
    "#{value} of #{suit}"
  end
end

class Deck
  attr_accessor :cards

  def initialize
    self.cards = []
    ['H', 'D', 'S', 'C'].product['1', '2', '3', '4', '5'].each do |arr|
      self.cards << Card.new(arr[0], arr[1])
    end
  end
end

class Hand; end
class Dealer; end
class Player; end

class Blackjack
  attr_accessor :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new("tom")
  end

  def start
    deal_cards
    player_turn
    dealer_turn
    compare_who_won
    play_again?
  end

  def deal_cards

end

game = Blackjack.new
game.start


card = Card.new('2', 'Spades')
puts "my card is #{card}"